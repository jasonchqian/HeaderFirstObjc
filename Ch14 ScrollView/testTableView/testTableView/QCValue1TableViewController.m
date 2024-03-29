// ################################################################################//
//		文件名 : QCValue1TableViewController.m
// ################################################################################//
/*!
 @file		QCValue1TableViewController.m
 @brief		value1式样的表视图控制器
 @author	Copyright (C) MaAYa.Qian 2013
 
 @date  修改日期        修改者        注释
 @date  2012/12/05     MaAYa        文件内容初始化
 */
// ##########< INCLUDE FILES >#####################################################*
#import "QCValue1TableViewController.h"

@implementation QCValue1TableViewController

#pragma mark -
#pragma mark Table view data source
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"value1TableViewCellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
        //UITableViewCellStyleValue1式样
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier] autorelease];
	}
    
    RMPlayerDM  *onePlayer = [self.datasource objectAtIndex:indexPath.row];
    if (onePlayer) {
        //主要内容
        cell.textLabel.text         = onePlayer.name;
        cell.textLabel.font         = [UIFont fontWithName:@"Helvetica" size:16.0f];
        //图片
        cell.imageView.image        = [UIImage imageNamed:[NSString stringWithFormat:@"%@", onePlayer.number]];
        //辅助内容
        cell.detailTextLabel.text   = onePlayer.role;
        cell.detailTextLabel.font   = [UIFont fontWithName:@"Helvetica" size:12.0f];
    }
    
	return cell;
}

@end
