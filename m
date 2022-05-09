Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 542E8C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 May 2022 08:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4KNuI45JuU17SWx4FPH3sYpaQ8fu5bJ0i5gXNNBCNmo=; b=h1R6qbZxKEC25N
	CAsuFds0mF6plOW2PfmajqVnYS47/OahPzk6TdDWgkxfAXtpCbtHDcfeDKi8hkmjEo10L8uIuioyX
	sKMxKeASq1dnpYCa3e5bNfTSPLeObL4zMgG8uVBbBWdz8G8GgjwBXYQrq2UraqqcGTMzE3w74ln6z
	ktklFrKRH/aHg/jfVdbDuvjPdHp9NNpRiPFc05aTDyfEphcrzRbcPGkUYcK/Zh5WkKdhXxcfxbolr
	K5E/ArHqOoeq+NeLcU5KSh4pnsCNqSDHKp1J/T5KhPeFtlT48AuJb6sK9Scz5yIayQkSK9+/qvKbH
	mY5pHor91F1bQrmbn0WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnyMb-00D2To-CC; Mon, 09 May 2022 08:03:29 +0000
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnyMX-00D2S7-Ej
 for linux-rockchip@lists.infradead.org; Mon, 09 May 2022 08:03:27 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 2495jHax021122;
 Mon, 9 May 2022 08:03:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=Tkx/BVWMZ8VIwzMAGzzhCqKV1iHIq4IvhMZfKL0+/1I=;
 b=TxbtTfPtV6HpEO+wr3Q/8RiT7dZToWJSYqhwpNqdmYeRF22LUiTzZ3l/8htAVz/KnS/y
 nsr0DThRcQO7qv5Rxszdg7oRkgnC+CC7sl+AUR0+wPinEDEZdRvgXNLAMSpuVSSZ34ii
 YU98+3nyr9AeE8KlMvlcl7zd/PEPO5suPBSBkrYTZh2tOb7Q23CPOf3e7B/mMdeNfrRA
 bJLSUEhmDbqWhYicEP10LN25cAmPS+PL1+DouroQyU88nSVCRh9Y7ZdJg0dKlOVpJZLx
 ZppwFbp3nQQxHLZjoyh0aw1ND1hSNhxRAmpBcgYmMIHDIXhtg4NAdbFQ9etv9lIqLdK4 eg== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3fwfj2apbn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 09 May 2022 08:03:21 +0000
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.16.1.2/8.16.1.2)
 with SMTP id 24980uwu010080; Mon, 9 May 2022 08:03:21 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2108.outbound.protection.outlook.com [104.47.70.108])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com with ESMTP id
 3fwf77sxt5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 09 May 2022 08:03:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QI5j19hB0pchJtTsme6KhYio0SiPuKql1U70htxPI1uC5taSB1PqWtV01dGdnnU+CL6yHWFv+01sGEicvyV07riW+aIqp4UG/GanIkMe0dRLpbFDEMmzS7qA9fT4Jew8IvgIoyjESk9Djd6q2xKHBhX8uStuOTaWDwXgd4Jv/j9ut0oYH2DJcJU2ruVdJJqh7XvkngwCZVgsp1ycEvznYGMOk5RBG917rGk+ga4JltgAwb+PNW4kG7DTrsqrbrVPpW+7mkSXmJDC6te/BJ1UMGEFnKlmuJPPbAz3xVGU5LBQ378Ptx5JXf7sP2QJyq/E2coCOI81zJlzKzZUq8tvqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tkx/BVWMZ8VIwzMAGzzhCqKV1iHIq4IvhMZfKL0+/1I=;
 b=l6f8eQTp2/npo0wwHTOkXk5wlitu3UP+wF8C1zInLAG5vtaS/lXCrBfErpHBCGV96NZEo2MIZ+wQfvauZNVpi+Ei+FvMG0paAxRJ13P8Vj9/6//3D9noACxoVDE7suEpBGlGbYOGIzLTV+WtPlhxO+nA13Gs+syc3H7HIPVBpEnIF17EYAnjJzdrrKdjZdwAHaqijWukGmMpMREJ3oHkfuOD4/w4D7n+KZEQiwurkgJmu2Vaz77W4JCYlsVhrtFNhBH5wlHtDwZxZbofbskfLgbUMNDRQ2Up3Rc6YT7rp+N/NIYl9jiq7YPNFexktJLkDArdpHOhX0UTPjYMK3KGKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tkx/BVWMZ8VIwzMAGzzhCqKV1iHIq4IvhMZfKL0+/1I=;
 b=EPU//CU50OUcQXD7vMp7t0XDas3CgvcnIUBqvmWeRnBVOP/QVQa44bBTu/F+PpUPr+4i8P2+LU2P1JbAudGUdKpEBCMhEweiiV6YJMn0mngx9aNaACO7YU4bu3p7xFmQrmw5G0fGX2zHwnwA8opDJ+kjBeOregil2UNwglDobfE=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by DM6PR10MB3819.namprd10.prod.outlook.com
 (2603:10b6:5:1d4::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.21; Mon, 9 May
 2022 08:03:19 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::c053:117c:bd99:89ba]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::c053:117c:bd99:89ba%5]) with mapi id 15.20.5227.020; Mon, 9 May 2022
 08:03:19 +0000
Date: Mon, 9 May 2022 11:03:11 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: andy.yan@rock-chips.com
Cc: linux-rockchip@lists.infradead.org
Subject: [bug report] drm/rockchip: Add VOP2 driver
Message-ID: <YnjKvyIFDdIY6Cuw@kili>
Content-Disposition: inline
X-ClientProxiedBy: ZR0P278CA0044.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1d::13) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f3b0b822-1fbd-48f0-5bb7-08da3192615e
X-MS-TrafficTypeDiagnostic: DM6PR10MB3819:EE_
X-Microsoft-Antispam-PRVS: <DM6PR10MB3819895E06088AFC407FC7648EC69@DM6PR10MB3819.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WFl4Yqhs9syXLBgdEVoe9ft/7mEakBshReBwXEClp2KsWnT31J5ufhdGXHtkXcgoeKftkqMmWYXxUxIEkXCIq4A6U5k9VihS1lW6bon3ZodRe+P5hQPaTRif2VpdJp4m58kUyav/6a9pnHOfUzPKOZiaRunZAKRTShx7ekyv8qI+caftpF0Pid3bg2elK2eRUmoqFJsvZVKk+7GtFrgmOmmFYPWBEAhvi+KhBmZVdoEBwf+bhVzGivp+3hFZBzaDO2jQ1pYrMnSV0HszZwcTsM6LqrOqu7UsGykmA7oUtFR9PdS+T+haFpoWh8ZDQk2ckaQ9karfzbwFzCObFPcf7QH13zq/LGcQZ3SCm+uv8XI6cRipeQ/bX9iQCrkdBFEBXXuP7Xm5MMdpNwIb94uKurEIZbb7y/r2hgmXK+j7ldpqvCdzSzhtxkiYWIx35IxnWwSbSZnYsIlBJMW2Nh7PQEyUMot3U428eEKnpMXeFDwkeuJXZFasRGMBrQnIggNVm5RXGl4ba05qOMupo4hW2Fuz1FOl4tJie2Pg6O3UJ17WHPu5+fGjHRy6rnZr8LMYmjJ61ER8+0/iR21oOnwv/3w0MtVigVVSDZEsFBUIfug3np8y8M0oXRESKRTJ3fm06KzJGUcv3n4OoQ5mfGIFkKDKe9Gp4YH75ZKNmUIac+vcZl3BDK/HhSjaKOnox117ahSBQufpj7KnREwTO4UJrA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(366004)(508600001)(6486002)(83380400001)(2906002)(6512007)(186003)(9686003)(26005)(44832011)(5660300002)(6506007)(8936002)(6666004)(33716001)(86362001)(38350700002)(8676002)(4326008)(52116002)(6916009)(38100700002)(66556008)(66476007)(66946007)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9/C0u2U0UMzyrZfO7mccWhR1LYapaSYah90/p5KdcPKgIBakvCL4EOOJWcNk?=
 =?us-ascii?Q?65aYhXW1/trgsrC6ffuLsH/qJ4maYaC0m3FqtpqooaINf/mnYhfm3gvO8rj1?=
 =?us-ascii?Q?WM88RSOsgMLXl7JG1Ba+H4RtQeJ2Lwh3wIDN4FXFyxTvFWorCD9jbMHAECBY?=
 =?us-ascii?Q?+Jw8SdWBPKtmk/neePtyTQlZqvTTSWRL0yoeFuSImNqH6iHD7/XIr5nvPXvn?=
 =?us-ascii?Q?Ff6Fx9eRJsmOFrFHTB+BReFQa68KYdI/dYV8pOxKQqavOYoYA3JxmrLPzNSZ?=
 =?us-ascii?Q?mZUOll+wa136kTblEG2E2xEDljkXb252s5AXMfoXjaRndzak6wIdTj2jTj23?=
 =?us-ascii?Q?h7fOIXvcKAYSLGtqLmTz7G5h6z75YWMQvJF7tdGqipUcniP8LufRWgH1kT9C?=
 =?us-ascii?Q?QC8hSzb94nHdJBz1L35jPvQTvJ783w37c/3DPnU+CZr9SUWUq3FENBIZa5nS?=
 =?us-ascii?Q?ip2CGZSUdtZHmwOScFGwB089IAh6JBZ6mGYoe2+C3fdzXlNR7FW2GaaDRhC6?=
 =?us-ascii?Q?Nbira2xczV9SIR0xxpSPt5Je0V63teKDXnzpkIOYKE8FwgyE69vCSyKg02vi?=
 =?us-ascii?Q?ap19hphM34jhKsqfkaVwCONOIx2BUPH6GRnOQXz6LKk7E8e13WKHasLvisNf?=
 =?us-ascii?Q?M75xV+Ovu68T4reSsrnS3aUxfedWylKK3iJqTOZ1rjHwoyZhdbRYTERztR30?=
 =?us-ascii?Q?o+E73CdQGUpO5F2VVwh0U3IEcIrUutDAZ2r+SEcR1bry0+anaVv0tsjpnY6x?=
 =?us-ascii?Q?z9d5nVt6utmcySQCaheaXTSrZSBwprnFTiU63DoKQUYGzxeya41YXeTvg0KG?=
 =?us-ascii?Q?ejmSWdqugtTbGvA3qXKcVc6RBfi/DzNdZ79Lozh2fMEKOFzNksHL1V1mnabU?=
 =?us-ascii?Q?saVcfB6P/pCa4IsiQ3N74zA1hiBaEhz7RQpZqnzsf6p5RAWQ3JMoBnQ60zm+?=
 =?us-ascii?Q?8cWbhgJlwsrLF9uzdydema/avvERqLkVn4srnHbc872r8tsJkA+T88DdNGbo?=
 =?us-ascii?Q?j9zRfkp78CrZynJBOXKfNDfqp2O2zv4WwtL8rPKMSLC/I1gj5ETuMBryCtZI?=
 =?us-ascii?Q?A/9+VEhiuTkmr16A9RZfzeahzyLw4sI/jpbrFdApsFWjsY2bH52rhf2Pc9Dj?=
 =?us-ascii?Q?fepv7sB0OPrF3Q31hGr/pS/9VvlvM4MAjOxMy0k9QxL2kN5P3X1rFrt4X4dK?=
 =?us-ascii?Q?7HWYe04WEOP8+Ft5kzxlpTygKJSoonowxiwwrD4GJXMmTsD1C+PPrm2UoICS?=
 =?us-ascii?Q?0g5xJLhuriRbm6Nie0mpP1pbeOKvgpHBgVreF1E9PgMOHwUlifk2SyohW4tv?=
 =?us-ascii?Q?YmHZFd+Hi56qtCvz6wBd0afpC7Kn6sBWlqUHN90BQeUl3ISgGkVdwzVlanpd?=
 =?us-ascii?Q?21vdOJpeagB27SZGP4dXcfIjDh5QJF2CXfSd4UjzEoizBUcJ0vtu4olyUn7M?=
 =?us-ascii?Q?JwCBWQzgw8U3a7CVy53c+vDBhM7FsKBiXGpYL52lfHbO3sFR0n0TU0dsJmTR?=
 =?us-ascii?Q?6XuFHXijye651w/Gh2eIZVJkD1XsSCYdQXc4LGXrOQUDZ/Toc3be44RbODwx?=
 =?us-ascii?Q?ZYAamHGk1Ds8WpDbd+2SLSLpknS+DdSxw1MhkyNLgcIh09S9b0PXgnXmBUi7?=
 =?us-ascii?Q?ey3ddLet59nFCCr8JDr71ZsLZAsENWZE2ttLkSMAoflIXE1/IIfXWrn1cC4h?=
 =?us-ascii?Q?p4d7XiYuR3cbm3Y6WHKWwZ9H7ruySGb2rX/f2vw0vOGfmoMTqDC2eRFO9PHb?=
 =?us-ascii?Q?hjXGRox1K2Y871c0jHqOnflneyx7LQs=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3b0b822-1fbd-48f0-5bb7-08da3192615e
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2022 08:03:19.5843 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IOmXu/ncrIxRG8KkgAtSV1Uzt8bSpnVRYQXetOG6JE5cgbp3aASkNJ4RMKhwIEYC9lvfeX/z6MwPtMMubZHUiUludDXyaO0qjGsxfVSAARI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB3819
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.486, 18.0.858
 definitions=2022-05-09_02:2022-05-05,
 2022-05-09 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0
 mlxlogscore=830 malwarescore=0 adultscore=0 suspectscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2205090046
X-Proofpoint-ORIG-GUID: gd0V6sKve-R99xO2n9dWngq0h25bMR6b
X-Proofpoint-GUID: gd0V6sKve-R99xO2n9dWngq0h25bMR6b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_010325_824260_BCC222B5 
X-CRM114-Status: GOOD (  11.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hello Andy Yan,

The patch 604be85547ce: "drm/rockchip: Add VOP2 driver" from Apr 22,
2022, leads to the following Smatch static checker warning:

	drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2317 vop2_create_crtc()
	error: uninitialized symbol 'possible_crtcs'.

drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
    2283         nvp = 0;
    2284         for (i = 0; i < vop2->registered_num_wins; i++) {
    2285                 struct vop2_win *win = &vop2->win[i];
    2286                 u32 possible_crtcs;
    2287 
    2288                 if (vop2->data->soc_id == 3566) {
    2289                         /*
    2290                          * On RK3566 these windows don't have an independent
    2291                          * framebuffer. They share the framebuffer with smart0,
    2292                          * esmart0 and cluster0 respectively.
    2293                          */
    2294                         switch (win->data->phys_id) {
    2295                         case ROCKCHIP_VOP2_SMART1:
    2296                         case ROCKCHIP_VOP2_ESMART1:
    2297                         case ROCKCHIP_VOP2_CLUSTER1:
    2298                                 continue;
    2299                         }
    2300                 }
    2301 
    2302                 if (win->type == DRM_PLANE_TYPE_PRIMARY) {
    2303                         vp = find_vp_without_primary(vop2);
    2304                         if (vp) {
    2305                                 possible_crtcs = BIT(nvp);
    2306                                 vp->primary_plane = win;
    2307                                 nvp++;
    2308                         } else {
    2309                                 /* change the unused primary window to overlay window */
    2310                                 win->type = DRM_PLANE_TYPE_OVERLAY;
    2311                         }
    2312                 }
    2313 
    2314                 if (win->type == DRM_PLANE_TYPE_OVERLAY)
    2315                         possible_crtcs = (1 << nvps) - 1;

What about DRM_PLANE_TYPE_CURSOR?

    2316 
--> 2317                 ret = vop2_plane_init(vop2, win, possible_crtcs);
                                                          ^^^^^^^^^^^^^^
Warning

    2318                 if (ret) {
    2319                         drm_err(vop2->drm, "failed to init plane %s: %d\n",
    2320                                 win->data->name, ret);
    2321                         return ret;
    2322                 }
    2323         }
    2324 
    2325         for (i = 0; i < vop2_data->nr_vps; i++) {
    2326                 vp = &vop2->vps[i];
    2327 
    2328                 if (!vp->crtc.port)
    2329                         continue;
    2330 
    2331                 plane = &vp->primary_plane->base;
    2332 

regards,
dan carpenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
