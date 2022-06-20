Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C46B0C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jun 2022 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YcDYhNmn3Epaswi5VkX0VrJ8rrvubeyTxQCAdE/WHQs=; b=jVN7TdAMpCK8pr
	b0fbuKyAkzQmmmosLXEsK5rdTa0Trjfso1nbNpAqAGjxhMpUk7jSsz04uTaFi7gB7h54sqRVPXk//
	p8ORAs4dVMbtCcWthYXhwQC6/e7lPdPyS7/a7cNX8BM1ZJLaZtgwlBH60WuyMsg0qozObMurkyNEl
	wKygrBmNCLDEWoS8UFM0UQEg2XvukF0/8ppxjwDkpGnwWRYBMdsaKnx32OfHjQB0GX1wP158mPDuY
	g2nVpn8jeOi8RKPCgHJgebkCxf3F7Wl3HUvkANGt0AhcRKjrTeAGZbz+n2XkweCsLWRbMmNnYb6FD
	sY3TemjoMDrzhmWjApvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3CEB-00GnBP-Ln; Mon, 20 Jun 2022 07:53:43 +0000
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3CE9-00Gn9F-K7
	for linux-rockchip@lists.infradead.org; Mon, 20 Jun 2022 07:53:43 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25K5oCr5030221;
	Mon, 20 Jun 2022 07:53:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=5DeNVhRFY9IaDFAHFBTVgdcOUySyFbLzJQG9CwwfR5w=;
 b=1JVm9SCo7yYKj1nGakqPh8J5n+2WqqUKcf+Jf4NleG6PgWTCrEwmw/P4Js2GHzTz/LZR
 WkaLqwxg5fIoHjgn2g9KIDl7lEoG7sGFzfPSiMzB4r2D6bD17d7/hQy+wetOiQM6SgyL
 3Uxi6573XjfkNh8NqfxBbIHjuJakfFam7KtoQA+9XZ3xse+mM144nNLvYkjhEKZpoDJE
 4CbjHSWNpiXGelhofNDhJsu18sDFgv/svcTrfPjhMDwqiYEhlp4tf/xfNYnXKSzNtDXU
 IMmVy7WC4bx/XWgqtIBTCf4AF/BAlfY6W6Edt4CvHBsARX2LjuAPD+O/aLWtgnURtxzy /g== 
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3gs6astk98-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 20 Jun 2022 07:53:22 +0000
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2) with SMTP id 25K7oQr4021432;
	Mon, 20 Jun 2022 07:53:22 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2175.outbound.protection.outlook.com [104.47.55.175])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id 3gtd9t06c4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 20 Jun 2022 07:53:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cEC7PD/0F7im3flTDWyN3uo1g+kCosunWaA78i54rXw+cvSFReBGvoHlf3Iei9BDNczmu4yeEol5PCR9Q5Rv4ZdHJA66yZmzB+cgoQEy9+2mHUMv8vLVK5ZpZrYeCJfELHOVtDSTMAqhGxCivUgg/I6AlkWc+TefizP+P1ov8kWHXlVfN42VnDeL/8NxdOz5ogm2Eu2FTQo9i1n2S1OMTSBEMxGHEbO28fCTofD3Lu+OIZg6/iQRq25CP79AoBDFMKPw6FKmz9y+PY2/BnV3TnDBgQvjf8KUG40D7ahXM9w9YvqBki6N966cdWVQfgeTggyVJPj09SRawICDFKAoYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5DeNVhRFY9IaDFAHFBTVgdcOUySyFbLzJQG9CwwfR5w=;
 b=gd2Wrf2YRxnaJU2nx/MibNrcen76HZnBZTtqxt778+26FYSbXDn3gsp9/hCrgQW0Ak3fFnFbDe7E5hxfQ6u2VEU27LO16XMYtffGbNz07OkWlDjZoeR5QBSW48Yfy6INgwt9o4fuYpCg7FDYduNqw/x93JQop/b3hRDPeUp7WVcdzAdb/G/JBZQKYGfWPmiTfADU1e96/1C16tV1vISTVtvAIVwWj1LEHg1Uo5kemWI3iMOPTB9TIwygiPb20GiQyZaFgZtWnNfOuIb4xuUYav9Y1OLd0tActPY8re/b6uS8MVOvG+ID/8ndDAh7zvvHcSwJGIcWyMYPu9colxaI1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5DeNVhRFY9IaDFAHFBTVgdcOUySyFbLzJQG9CwwfR5w=;
 b=Gv6Qzxb4oKFHBOsM2VozjyNrY9VNDFM+Axl1lD4bJf4kc6xbgRDIJOpIQglCLzL5czVOhqgpL73LEY9NGrV8EHzvUBAzr8Gj4c3mOeyvlhuXGPmmWxoTUGR7NPkCACL29uCNfTRH9qx/4B6c5pa6Ta4SGZLFDyrY1Jw2ryVq83U=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by SN6PR10MB2654.namprd10.prod.outlook.com
 (2603:10b6:805:40::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.20; Mon, 20 Jun
 2022 07:53:20 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5020:9b82:5917:40b]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5020:9b82:5917:40b%6]) with mapi id 15.20.5353.018; Mon, 20 Jun 2022
 07:53:19 +0000
Date: Mon, 20 Jun 2022 10:52:53 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Zhang Zekun <zhangzekun11@huawei.com>
Cc: ezequiel@vanguardiasur.com.ar, mchehab@kernel.org,
        gregkh@linuxfoundation.org, andrzej.p@collabora.com,
        hverkuil-cisco@xs4all.nl, linux-media@vger.kernel.org,
        linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH -next] media: rkvdec: Fix memset size error
Message-ID: <20220620075253.GE16517@kadam>
References: <20220617073101.101234-1-zhangzekun11@huawei.com>
Content-Disposition: inline
In-Reply-To: <20220617073101.101234-1-zhangzekun11@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNXP275CA0011.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:19::23)
 To MWHPR1001MB2365.namprd10.prod.outlook.com (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e39f6d25-3837-4069-34a9-08da5291f107
X-MS-TrafficTypeDiagnostic: SN6PR10MB2654:EE_
X-Microsoft-Antispam-PRVS: 	<SN6PR10MB2654DA2CB484C1A8DF08B7238EB09@SN6PR10MB2654.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	KrXD1o4bZ9eyihErp2cUKMK8CwAPZtqCeusbbJzUXv7vRtN4+Ba6PSArLU0NmgOT9kf6uXMki3Z1L7p+9TC4wDT9PtygfC0PKXqrhOPg1OCY6YCA0kvdVpUVxk4mzPTSNO4JymiCe1Ktzg92gxdJ0TWCJqnT6Uqnr2P4TKsViH9P1rSWO3qvmsBz3fuFoiD8mx+lzozuZfftvoM5cfsTJkODo4I4SkKVyKhWm+OUMxNuhmSBKUy4EBPEWUBDH4U+DLrZKQ0edfJ0pe3qJ5JINiguozmEHK0CR4aLF84NadCfDScuPsDh8AJDCHHaKa+VhRxNTGZNt5UldFdL7Dl2hF1vvafTUvUoXth5Ur8a0lse2y6MXlwCs/IBOpcbMSGVCYs0UftW9CWisx7FOtvIHz8k2n7ORsm84U6Gb6Ym6tq0ng75gXLv8dKFXNc4cByNVzHlB4SnueF4gslGQPIp/P+FMevBKmd4ijDPr9k11xNjJ1FXyWveW3iW31jj0D0oEg0fPWYxzbh3a6a5GIn2R6Nmb7JpiCoJBHN54gK3S7p9PZwjI1mvKjsxRCU7mUdXWWgNdqmb0VjGMFMjL3iKlCZ/sfT+SIAWYpwtxY5ILvvfrdB8RVZKkb3tSJmfdUKLsd1GddLw0L3RyHX/5VM95nl8MMPY/k7yyPTdLdCm4qP3iPzFkLNmwpfhsaLrKSs4T6tzynrinK3Xq9Fit7mn3w==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(7916004)(366004)(2906002)(1076003)(6506007)(186003)(6666004)(6916009)(38350700002)(38100700002)(316002)(86362001)(44832011)(66556008)(8936002)(33656002)(83380400001)(6486002)(4326008)(498600001)(66476007)(8676002)(66946007)(33716001)(5660300002)(7416002)(52116002)(6512007)(9686003)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?Rr7VLJsor/PVKrfSHfWNv6duPVtaEnlp6mn6fJvEm2qo6eh8F6AUTmdwD23L?=
 =?us-ascii?Q?hgRy2kdlUsr/DEVfTAKkNlOoMCKKI4tZZTrREHUuY5BAieBHPKU5xh3UKnKx?=
 =?us-ascii?Q?u8q2CzRV6iVu75ZjVBihYx3ZfRZVPj3CvzjcFX0oqt5SAlGo8Em8OblrqhYr?=
 =?us-ascii?Q?wVgWdGYX/kksZoWEmuUMQ+iGbcaXVDaiTEEEBp+F7w4KDzD/Av9/NXnnM3Az?=
 =?us-ascii?Q?nTjvZPZDJsprFky06bruXjmbFKpEbahbpVresfhKLfEOuzlUTdRvYkP0mUD7?=
 =?us-ascii?Q?ZQG7KhqjBcSezVzysEbs4EoGEGjYl3p1i99tsdj0/n76cX1AJlyFpEdu8sDb?=
 =?us-ascii?Q?DKABdWXZnSZ5nqBzcsO9GI1cob8iq2qYEk2m/8T2U/TMF13NdXbFhEsj+SCL?=
 =?us-ascii?Q?+i6sxJpo+uj0Jc5dd4z9cDMD8dIN2XI8X+oduz9cpdSNDNWUNEPBF2xl0FsI?=
 =?us-ascii?Q?gBdcdc1BnQnC0IY/4jysPYsRQUBpJKxSKU/CHTEhpaYODTaXFD6cgyKj5uIr?=
 =?us-ascii?Q?abRT7DjL0/Y8p5UNuzCqbAJflg35D+JIUzq4IE1XgBrX3+ZxkbrGculcmgIp?=
 =?us-ascii?Q?MXkRhX3TQzKsxHOSFV8WjgzoVdP7YqsCwpLnn4BgLxuiYrf9DZS4gvLhnA8R?=
 =?us-ascii?Q?zI/Od0ezO12otMdgAkC6Ito3n8GwZSk3uMRT5sDQTfATEPtBOHM8HQHxIvop?=
 =?us-ascii?Q?+r6ZoQhSg007FeFYdlGDEbhKqrhshU0/bOspMY7SsgD2J2j/ZSUd38OTlXhp?=
 =?us-ascii?Q?CHj/4M/UZB0WZozSsPEX+hmQiPXBkIpAsy3VxLcYOk/hbCdBt9S93Hvhj37/?=
 =?us-ascii?Q?P6iuJImTuT0uDLX8KzgxziTLuM463kyti3oXMHq87aYUu4IXXoIQ0/NCEuAU?=
 =?us-ascii?Q?k2L4NUNtB+c2iDfOf/cpIb2XNZFcwlTYiKjXHfbs+WInD+fxx6krMXi7bYp0?=
 =?us-ascii?Q?wfB1hn8SMKW1w0OmQBuQ0ITd8E4iEHMQnO6rWWelRKAdwZxOLmNtZQ4jOX3V?=
 =?us-ascii?Q?lAv+cLwKAP0Ye5eFN3eUFD+tEDmY1z7/6f2qAj39pAVgoGK6DfzqSIqyMguh?=
 =?us-ascii?Q?wbTFwzbxXLUOhTae54GVc0FOU7Od+I8Kvk4Od4wqJRR0BYUP7iJ+TknuQ4mS?=
 =?us-ascii?Q?iW4w6SFz43lUCmjUO9I/YmKeVnAty1IAZsaBNcS/4ATjHjRXBbfoIPlJvZT+?=
 =?us-ascii?Q?sCn7DetmD08ejKoL3sTn8XWPDT7DEti4MitW++RNQlu120issqFRKoX14zzs?=
 =?us-ascii?Q?ln9V7/JIuyPE9YnPQHNiKDxeTRpYiM4kUNGZCO7Jx/6lbATaM2I/6jeHSxur?=
 =?us-ascii?Q?IemP/NxhCh15/KtWcDbzJOESNGBDM47QlNY8BilsEMMy/koppAZ5fNYmE2B8?=
 =?us-ascii?Q?6sZ7JTQIyv9m+Xebts6fQOL2NNuZ9VJRx8R8XVKnhH6g+2QSrUDBQhUmU4h7?=
 =?us-ascii?Q?ygRD9xF2/x62MWxB2QZlCLFd67kccC78LUhr8iaJcYf69xUMZ/OVfGB45KbR?=
 =?us-ascii?Q?AVjVdggusC6gC7ftuabrYM3PlmF/37qRuGAmZd+bSbj4DTqPp4EANS0bk3um?=
 =?us-ascii?Q?v6KC8cIsbGzlfBqYoTz7dOz1DseOC+R5YGPd/57x6lg8L47TTg/d1tV46wrL?=
 =?us-ascii?Q?++WwcQ7rNSwpob3DmFKqC+Siyjx/bUFRgeAMDMvxPSNoX1K5bPrRqwKY69M/?=
 =?us-ascii?Q?SVLH7VzErz3LyVCCP1YHDyo+2XfHl+hDOSH5Nb14S4MPxF5OquBC/a9BZXcm?=
 =?us-ascii?Q?S+QcH0M2vfkNj7sonSe7tZeh/8P1yS4=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e39f6d25-3837-4069-34a9-08da5291f107
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2022 07:53:19.7144
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dX3OpsToDxH/7j2K1vRRE5ZvTKyvwZEHmLwf8qHCOyklCelE2Mzjf+3xQMnk9uTskPvbWv2yJ53wDzWzm/V/A+zBFi6Y2BIiT3f3b6itGRY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR10MB2654
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.517,18.0.883
 definitions=2022-06-20_04:2022-06-17,2022-06-20 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=923 suspectscore=0
 phishscore=0 malwarescore=0 mlxscore=0 spamscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206200036
X-Proofpoint-ORIG-GUID: lWKcg74TzPatd2Wdi4UrTZnyCVLzC8MN
X-Proofpoint-GUID: lWKcg74TzPatd2Wdi4UrTZnyCVLzC8MN
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_005341_807791_06A8BF5B 
X-CRM114-Status: GOOD (  18.92  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Jun 17, 2022 at 07:31:01AM +0000, Zhang Zekun wrote:
> 'dma_alloc_coherent()' alloc a 'RKVDEC_VP9_COUNT_SIZE' size area to
> 'unsigned char *count_tbl', however, the memset() bellow only set
> 'sizeof(*count_tbl)', which equals to 1, bytes to zero. This can
>  cause unexpected error.
> 
> Fixes: f25709c4ff15 ("media: rkvdec: Add the VP9 backend")
> Signed-off-by: Zhang Zekun <zhangzekun11@huawei.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec-vp9.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec-vp9.c b/drivers/staging/media/rkvdec/rkvdec-vp9.c
> index 311a12656072..3ad303a3de48 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-vp9.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-vp9.c
> @@ -1026,7 +1026,7 @@ static int rkvdec_vp9_start(struct rkvdec_ctx *ctx)
>  
>  	vp9_ctx->count_tbl.size = RKVDEC_VP9_COUNT_SIZE;
>  	vp9_ctx->count_tbl.cpu = count_tbl;
> -	memset(count_tbl, 0, sizeof(*count_tbl));
> +	memset(count_tbl, 0, RKVDEC_VP9_COUNT_SIZE);

Just delete the memset instead like Robin said.  No Fixes tag required
on this one.

regards,
dan carpenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
