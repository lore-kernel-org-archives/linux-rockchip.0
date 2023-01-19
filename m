Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8016CC00A5A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jan 2023 15:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wyEcYWg2hWQYo7FZ+915xsgl72o5nAA19TMFOvdkpCk=; b=Iwq6dCCrlPQfR+
	zmzj+fjmvoA3S/FojdrLuH662rBoJVuDe7QvBUzea0jA3A1EqjamLmag2h80diSaelswI7hlEFMAt
	mUw72g9oUP7LTuEYgc+7Os6J/pIuZRpAz/p2G9atsNjxDXKUZ0diL6zqR/yC89lgu7HqbGWre0R9z
	wUbCXzByMqRicj4eAFpMJ+RpUFgBUCXLCJYIbbRQs4F2nJzCJBRLo10tSd1OPENbFM+eliWFG4SUG
	gRbS1EOQZtsja4RCN6u1+pikiYHc4X9aCvJDhN4OgMh7qdV4PIEie0L4szdTcL0mASFJRyic4LD7E
	FjK638khDbFI0nr0yxRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIWY6-005Zfv-Hq; Thu, 19 Jan 2023 15:09:54 +0000
Received: from mail-dm6nam12olkn2033.outbound.protection.outlook.com ([40.92.22.33] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIWXS-005ZOI-Ab
	for linux-rockchip@lists.infradead.org; Thu, 19 Jan 2023 15:09:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J4C+atf6qm52WiLXRJPwPrIrfjmsVt+hTyOIHK/dZ5t7v3Za0NsVJfalXooolzy6kM42jRlkvux0Un3GP/TCfnIEO7fLGBTVg6AGsyMlZqUwnG7prFun/lA2sNR6Ky6hAKVta1nctXvbkB4eUKEXSZ8RvRY2pb8mhOtYPrvRHbBdVEIU22w6StWW539/SECbpKb98YQEtpvOer00lXWOVY/2v7eFjxL9kIxPUuFKhgBS5ghOQ7Vn/A/MgWn8I5HJV1KnWwCnzpEiGHr8zxbeyeayvuWS6Jn58buw9AmFgHOfAq2xxbfWWkVCAuYKwR7KrguuJ83yyFH3rGoFIjll+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/5zU96Nfw/1LfWDeN6rJMurXno7exiwm3mBlMPvRfec=;
 b=XFxV3x95m0TiIymi8tI41aUbqjffckCKJnoVuAducAs5d+yiH3GrhP+YQwyz26bu15GBZEGyE3SaHOnrNBY9h7SQou3Pv7KLWrVDZW6z22A2n7t4L6slEVX7JWngpPBO0T1AryTXUK07347oyVYiFmDmJ6VHV16iZsnTDnPgHT7mOfvGXcvbQ5tO8FOPNQxzIRdST1cY4Q04IUE18CRcHw5jQyAmJdrlDV5Ea5T9XN/GZ+vUi/zsLVViwlaQcbZSzOzIU8Una/gQSMWIge2jhZR/l4S5QkTmGmSBRTtdebIhSuLkGcqnxDD1mq8nZL2VctFT97wBO9ezXIQGn+FpVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/5zU96Nfw/1LfWDeN6rJMurXno7exiwm3mBlMPvRfec=;
 b=jbvAN4vY05MzWU9bAzOJ57Fi0J0tXlCDNX/yMmiMC3WO9GCTaz2ixqf6yMZSgkQL2fFCAy2+6d3XqBn1OHZsC+PZlH4LpAbIJkuHMKA2yWnG30aT8uhSgJqC2dc5KUY+DXG5f7n9Eg9gfiQ6na6PLsp8uN6FZ+xXGa4uboIhaH/4nJHzyA053/lUv/LTgNXqoiA9waDmvcBtTifgOH6P3jtbjpzDIvRJJsnUoZyxILysDilK9muNVvsVhPPc3eQxsFKs3abqY4/1GMe/KzrG6+I6V9GbcOoRbzpt/0RvhmwsrJ9WlvhYlp96RxNYXqQHzOG/NGyxcWdQ4rtNB2jJmg==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by SJ0PR06MB7083.namprd06.prod.outlook.com (2603:10b6:a03:2e0::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.26; Thu, 19 Jan
 2023 15:09:08 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::ff4f:2e64:cf70:cc68]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::ff4f:2e64:cf70:cc68%5]) with mapi id 15.20.5986.018; Thu, 19 Jan 2023
 15:09:08 +0000
Date: Thu, 19 Jan 2023 09:09:03 -0600
From: Chris Morgan <macromorgan@hotmail.com>
To: Maxime Ripard <maxime@cerno.tech>
Cc: Chris Morgan <macroalpha82@gmail.com>, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
	heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
	sam@ravnborg.org, thierry.reding@gmail.com,
	linus.walleij@linaro.org, Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: Re: [PATCH V11 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Message-ID:  <SN6PR06MB5342B2ABF5C08A2A62CF8715A5C49@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20230118233135.1174859-1-macroalpha82@gmail.com>
 <20230118233135.1174859-2-macroalpha82@gmail.com>
 <20230119081542.lfgvaj6lwwdb2eaa@houat>
Content-Disposition: inline
In-Reply-To: <20230119081542.lfgvaj6lwwdb2eaa@houat>
X-TMN: [lcnx6urk4fvGOQ1Lc0ulVO7l3+aFfhFs]
X-ClientProxiedBy: DM6PR07CA0058.namprd07.prod.outlook.com
 (2603:10b6:5:74::35) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <Y8ldDwb13TG98X7o@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR06MB5342:EE_|SJ0PR06MB7083:EE_
X-MS-Office365-Filtering-Correlation-Id: 7461db61-9c75-4c32-fe3f-08dafa2f1c79
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	n1jMsbDLiHxoZBZkzDdG+4Ixi8aSG//4F4y+F8KDKO5aaHcQOMRs83LqAzrUqtuO8GZe5f8wM3PiSUTcO7cXIdsHqxRrBODGYdcJjrBwUNWY6KV4aYsScbtlgoUkEPandjeVO00OOk8EmX3FempD8w6zDyHP7Awj2jgFaQDddNz5mnX1Y6kq0SVbyE5OGKoUX50EgHaGbeutJzWvNIBX7DoXsyIFXC9IKA2CB4gn2COlQ2R5kf+SVogfZ+n1Va2On+FfZ4fdQ2BsK+RJkftJ0eqF/QieKZt42qbTK6Jrlm8LNnFy33o7NLlHpzI2sACC8LoFsgcup1jps9gy4dJd/dnERpHpX2iHsD21P5So1GrB4YGkNRX871etzkR8Bu5RR9XCbKdx4KZZHIAJGV0fk0wCYApLou7gxJ3HJlQGi+D/MXceCHTHzep2t56/IhDd2/ZCjdSVh2Ll+2nDZo03rMJ1NyOkbJ4d4tDJw9hq+Y7Snf1MgvV8VYI6dP/6Vqoi9U8LrxWovNVqvvdrFLSbezUVpCl8loVij20cFQ4af4jBW15odQNmC44SQBPECHM/IEjn0iJqpWKDzuhDP53SkowCVYRI5Ai7Wjo+EiABAj4b4E0GT9FI7gWeVflNtWRFVGRCw8d/L+bmhqwLdjoooA==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?+4oWPLIeOhAscu1k3fMExSmB1m2fe+3dSo4aqYwSgX4s/iVKKAa5a2AEDF45?=
 =?us-ascii?Q?JObpPk0yhd6CNdscqx2w9kosNqi38RfVEIlTO+E5S7ORxrJeqaZbI1DMOS48?=
 =?us-ascii?Q?O/pilwirZAZ1IUXCcttBvf0PlPLxVfKaK8IBG8BZYFtUYwLV3ebehPsjwaVS?=
 =?us-ascii?Q?AQa0Xii3TDA6/9xDUMWp99ALe9CcvIWYEmtJ16UKyQQ2U4H3ubFf1bHN1Kvl?=
 =?us-ascii?Q?8gRCVKUyFXL+JeQyt+7KM1ucVZheWSMW1eY7GMz4cDbMvW1DgEjy8mhSmbl0?=
 =?us-ascii?Q?5dLgSHWKGBtnABAygjiPscBwlDWlUxJasO0NTbo+9Sg//rdNIPzkEgDBJJT3?=
 =?us-ascii?Q?usQ7q/TBWoVp7ZtZcBAye1O74vYIIv5J8AHzfn7a5D63AyO+knjM5yylTs7p?=
 =?us-ascii?Q?Wg+TtX+PIekcuLHQbI7bFJx97sxqbtW66KbH27Epg1oq4h8xeiyvIztsnGAy?=
 =?us-ascii?Q?sRmbg2HM+6FDjL9yAf0/01jn0MWNcPPOhSu+b/OPVgHQMI3P580mnl3khd43?=
 =?us-ascii?Q?DEOs2sBLwMjzGb4+KBC8lIwQ4mqChbrKP42JxPKQyxmgcvgPCDQN7RR+N+Ns?=
 =?us-ascii?Q?kgZKXt1CD+0F0vEFyidyDUgYH0oKV8HyaBfaJV4SRDqBe9NmSChghRa99nnL?=
 =?us-ascii?Q?lmdt0hRFZ86uvEf5oI8yoN8l23LqOEvUFfDe1MOQAsC+Q+HwwmocVSUOV8h9?=
 =?us-ascii?Q?IEv/3/wBGvndQ5wc+D5MCOXyR/TX83Y8QnExYTQHxCShHHZaLHMEWDyzlHtR?=
 =?us-ascii?Q?EgqF8kIZDQA3CEVVb+D5jrcJT+hdmeMlJlWyRNeR4h23eoGcHMuxHF3rYGb5?=
 =?us-ascii?Q?JknrKO7vHbMB4xIif4pEgHcf12i8VS8bdJqQ2tCi78Y1xFWbEb2RQE7WTzO7?=
 =?us-ascii?Q?Bm8axZIcnKq+SJ7YTZS0USRv2h1hEa66ICCWaA5cER1jBZhTaMaNJ+qqcYCX?=
 =?us-ascii?Q?qdYc7F59hIyRo1KriyDW0eL+M2QbmZ94YLGQWyMvTEVwIa0CUIOalCTO1rVK?=
 =?us-ascii?Q?G+eUqsk45H1Dh2KaKT7y26K0o1w8UfOrPhM510uQPTC7Xl/YfxxTcVrAJR35?=
 =?us-ascii?Q?vU0gUa+qUZ8M7nyHPPYatlytLc76xUkvVc9M/lEnGoNg1ZNdJQA0eT672xzd?=
 =?us-ascii?Q?4geKZ+fXYH+MKGmgzbFKwVjwgtnp9MwHYDgPf8e7VM6fWnjYa/WMV5i6jz4R?=
 =?us-ascii?Q?rHDRGKmqf72PSQeVmEQUE4pH8qrBvTD/UH1O5DwupuFwOWglmiAFnt3tq8WQ?=
 =?us-ascii?Q?Kquxw5qDA4Y55mCZ9YfdxD9NrqLLhCNV2IvNNwJXSw=3D=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 7461db61-9c75-4c32-fe3f-08dafa2f1c79
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2023 15:09:08.8103
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR06MB7083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_070914_451446_D27EB050 
X-CRM114-Status: GOOD (  16.22  )
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

On Thu, Jan 19, 2023 at 09:15:42AM +0100, Maxime Ripard wrote:
> Hi,
> 
> On Wed, Jan 18, 2023 at 05:31:32PM -0600, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add helper function to find DSI host for devices where DSI panel is not
> > a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
> > official Raspberry Pi touchscreen display).
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> 
> Sorry for not noticing this earlier, but this is a bit confusing.
> Signed-off-by is there usually to follow either the authors or the
> maintainers (or people that passed the patch along).
> 
> Given the order, the SoB here indicates that it's Maya Matuszczyk that
> committed/submitted that patch, while you are the author. Obviously,
> that isn't the case since you are both the author and submitter.

I borrowed a few lines of code from her, which is why she is listed
here. If this is not correct let me know.

Thank you.

> 
> So what's going on?
> 
> Maxime



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
