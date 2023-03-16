Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE4EDC7618A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 19:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7EOXvpW6JUdFtt4JCFRun05c4j1vGCq7uZJtAMBGI+0=; b=n2/Clpne3HHps9
	YLXj+hXY8kV8HCgZDs78HcvHiZ/MvRU+bf4+Vt8B+uMTEGcRuTqD1M1tMpmUd6AWNMuPm9UYZ0mck
	adDvVwqqy2L8Wxj8HnAo4rBuEaC6BL9riNnv6zrRLYGs4g0EyY2aGHRPU7V7uhomcoap8M8JzsWb3
	gZPK4SRLQf+wl4oiAqocRc1p67YI0Q0QpDDIoy7L4i+PFrcsC9/7nFiNjOgGe7DfpgiF0fz/sd9L+
	eqVuUjODjgdlCYEL+KmIpWZ219MTrJa+Fq8m1nuizQDrBJucGSVUNwWkUwipGTnqwtN5MNBs3fSvS
	YGCt4nSZ4YLDCkqMsj0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pctP0-00HNyC-31;
	Thu, 16 Mar 2023 19:36:42 +0000
Received: from mail-co1nam11acsn20808.outbound.protection.outlook.com ([2a01:111:f400:7eab::808] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pctOq-00HNuj-3B
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Mar 2023 19:36:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NZUpKaxFQcNhgql83gRb/MqGxZtt7QaGN9ZZmvLRV+2dhqO0Ag91extUx4HpjWIqZZbR8my4f6a0IGIKjG3QM+FMjBn32WQs/+wEJCDiPcvNIWsMaqPzpHeak4gSp/E9IpgZ/R8LBR9vpIQCmUpfMFhGGSqNur6c1A0wkaR8HPv2us+C2Bpemjwuaq2oFm3sWyoR96j+e5XZXobJ6uz71XEJ7CMV0va2mmpYt2P8QkohaHngbCg8DDCR5hisVffog4kk8P7gIRQTkC0XHmFiRWCCxz4HDZyX5s6gUXQ3HQw0G9jSm9jgOvsSwMkLIRcQPp1RqsiH59Dae2haQ9dcsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LygNJWXcUFxLmYWWBC3zyPrXiNSEmS0bSK9YpVFjiAc=;
 b=kK70rjEAD0bu0jkR25YziIB4PxfHGz4urTFPspOv6AvU9V3f9bTHxU4dFqEcAMl9DTKVt6HcmN+GEdyBeZ7Vq6jZhS3FncOQD/LfkmRBDx0mXQ1n/RrYbdffNCLigDl47BDwmUQOAYogOFbEkBYf6JSAeoa/e3w+iZ1Mn+L9Uhn/E85JQvnrcT2y08WFzSQrAkcFN2DD9SUFzOQUOF9QxC5BBSWicJvTs52Xz06hoDkvXLyoXr6YgdYM43rEWjBJgT4jnlO6oilTcY2xj1oIWhZ9dHfGOLba3GW8PkriqcM5jF18b23G8XeP50T2PZKG2o3HpnJ26QiclF54xckihQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LygNJWXcUFxLmYWWBC3zyPrXiNSEmS0bSK9YpVFjiAc=;
 b=vPb31rEhYsFOdO/j/P9+2Ucik9NyXACinfNnsYB4tf3IyjlFeDcGAra70hyTYPzu+/NkYBnIIxig37bo2jpi/oAFfL0GXsjQsWtusdpLJSZBsRmazsh4PGpRl40zycHZ0UWJRmDvUpZ8tfNuSklmWTv/LjCSm+vm9RTe9dKean+vnhqLlbYZdziAb3+dR6xoA6HC9453+iGGba6VR7g+LlP/kPBjhJ/04ZhXbL71eiLREpqB5oZsVq49GNaZZjRp1rIkQ9ypkjkbu8hmdKlvTiG/n72zubi1bank8USTRUAboApkgzfyXtmGs2y6OayA/0g+/Am9qfhrOeZ+HeYEFg==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by MWHPR06MB2813.namprd06.prod.outlook.com (2603:10b6:300:11f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.29; Thu, 16 Mar
 2023 19:36:23 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::1ba2:9d51:aaa6:2f4a]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::1ba2:9d51:aaa6:2f4a%6]) with mapi id 15.20.6178.029; Thu, 16 Mar 2023
 19:36:23 +0000
Date: Thu, 16 Mar 2023 14:36:19 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-bluetooth@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	alistair@alistair23.me, anarsoul@gmail.com, luiz.dentz@gmail.com,
	johan.hedberg@gmail.com, marcel@holtmann.org, heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Subject: Re: [PATCH 1/3 V5] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
Message-ID:  <SN6PR06MB53428BC8A46EE990EED72DACA5BC9@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20230315173657.28692-1-macroalpha82@gmail.com>
 <20230315173657.28692-2-macroalpha82@gmail.com>
 <66c41be5-eeeb-9b3c-9bf1-414e03118578@linaro.org>
Content-Disposition: inline
In-Reply-To: <66c41be5-eeeb-9b3c-9bf1-414e03118578@linaro.org>
X-TMN: [vGPCowReQi6XfPmuDN5OK94yssmcVn1F]
X-ClientProxiedBy: SA0PR11CA0036.namprd11.prod.outlook.com
 (2603:10b6:806:d0::11) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <ZBNvs/TMnn0kYl/i@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR06MB5342:EE_|MWHPR06MB2813:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c5f9173-5f62-4162-1f42-08db2655b99f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	6qQGtTLaQFt5ledYKE+4nRbPZ2rz3rPpmOF18yxKLIkNMoEmd+rXv1rd8ieXzadzpWssEb/11+k6N+4kpYZqLndYMRAI0qz7wrcFvaX85kzTcnPW9/vWUzCK4CaTn2XSwwiPzLBBsW4Wdn6IF1NmokVd4o+D0MfQD5Ton156DBA10siplieYIjS98yKi+iLwrXldnk0KSjbCA2fhRRO08Dfy1YP/uDtg+n53ysqIYuxsB2gcwrf/JBFD+H3g1iNdJDZNlbzTGCx4DUxkmZ8SknsTHc5ZBeOi5+7mvgzOY+vK5MRnLs+3YSTegPWJjTWe8/TUg6hLhZ1lKcMhoprFE6t5HWg21ibzc6gR0xvWtCQDGY1ECSxw+rSICphzhqf+JHm/YBNkU1BL7oLHmZ93qZFlEa/IX5jhVqWd0fAIewZyydQvf9PQGo1yhf6egb8ZSlZlIVY4PS8tO6T0Zou4XlKyOChLOlRGFsw/kuwYE9pI6gWi221Gj8fcRy3tCTuTEbACWRNqW7o5FzzCQR3Co1JL6gb7SNJw/etS6wKOFT2KUpCDb2GnkvgaaRZXClvY1XUfZBqFEKEiD4oEbFi6rrRsd8KCIGIyfFqYxLxUlk1OLqNOy2DLszkGon8uTxsS
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?uxi9hUI9n5Y9ZhhuawBKPfMSUgNN6cHz9Bi0avKvr5kzzKraX45IMi54z7ZN?=
 =?us-ascii?Q?X+uZoVl6U08Zrwdkg2kGEEHp7wDEL5fiu72w2kn/NdJkrnfROn98hKWvoCBk?=
 =?us-ascii?Q?rdcCx+WqlEk7fkqpSsl5v7Q6oBaneHjL/xw05ZpIiNvh4zBK+dPz+ina2rX0?=
 =?us-ascii?Q?lwFSYNH9kqLk1IEV5rCYqSnXIi77cfrDQrPj/XmaNnyA89dmOjvY9oS9gHda?=
 =?us-ascii?Q?sGB5W4Tht70EcZesUKfzSWK7VOa34hZcy6nEpQSdGeO4TsClCmXjqHJKcueg?=
 =?us-ascii?Q?vE/sXJCzaMyGA1WkcUZthyBkycG8P4cJbdZyAOKTWkfI9r6p+hZ/z+0NplAT?=
 =?us-ascii?Q?6V5QyXMOKRdiGn8pTI4v1P0Ev18+u7J13mdUWPbovga88nOz60/2ODeYuLCB?=
 =?us-ascii?Q?J5/JZKEq67P+eFt3/4EEyxsf9sp/7n+ImWo9QP9vkwMPDWxfUpLI9jUem+Uk?=
 =?us-ascii?Q?tc+tfRKEKMLjGhAxCERyU7Dyc4L9ZhIpNg8e53HSYmjirMHe2ZY6TnSdyfla?=
 =?us-ascii?Q?nBd4b66QQ8tuSTKVZFbRbjLjzOlqbe0HiVmf3mO1cuHwqgMFULQwXTVVAjCA?=
 =?us-ascii?Q?QJq3kzPnmv0BUS+3xepMjkRkX7DPo1zOAM/CAPorYxV4NOph+gNeZQzpMJxU?=
 =?us-ascii?Q?+6cjINxWOeP9IGKrKohEuBPqeDAscSBcthBL9TKsg9zboXOWia/iLeFGbUBT?=
 =?us-ascii?Q?yG0/ciS6TfyPVZf2uUEXpURQq7b4YmJmNSmqrf9dIB4RArvB7BnK+g9vhy8m?=
 =?us-ascii?Q?4EJlYLXP6lfMbx3v3+QjRPvvtdvMeNylYcqBo17VqmkdYkHyb9is7d1ZPfvX?=
 =?us-ascii?Q?/iuattuoBKHMm4pMbbTnGg0DletT5hRen7TlksHS0LwLPVCR7N2zOrnUIVEf?=
 =?us-ascii?Q?BZhYBtCIliXhq9MndqPTmkHSdw+S1zb4GP8p6aDyrmtBTpbOyUmk4HWPVwp6?=
 =?us-ascii?Q?ZCV5vlbm2A+IjFIss9GMeasVr+vX9tzmFVVQY63zFy1IT9N1vNgr7HPchSfY?=
 =?us-ascii?Q?luLvAOqSdYuMdaQvs6XrlVG+bO99Ynlt/NuevU6FR9pjxALxFl5m0HJAZd3Q?=
 =?us-ascii?Q?auhtqhdl7UQ9Aql2mLXw/4bSTrgjVBrR71QD4VGQ/Z5AgPH4oMlRtQW+DEtK?=
 =?us-ascii?Q?hxnvaSZskT9Sn7KDzrMAyf65V/rUoQst8lYSSnsrIBxIcVZw7MV1aq/v2DIy?=
 =?us-ascii?Q?RWHwSg8uZeL/101SR1L0DzP4j1oupc704mW4wO5nq8Im2AjKRsGGg739rZKF?=
 =?us-ascii?Q?12nCo+c08KzgPWFopk7H2p/DNTSJXeOvva4bWZf+rQ=3D=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c5f9173-5f62-4162-1f42-08db2655b99f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2023 19:36:23.7126
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR06MB2813
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_123633_035535_46090D6F 
X-CRM114-Status: GOOD (  20.72  )
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

On Thu, Mar 16, 2023 at 08:55:13AM +0100, Krzysztof Kozlowski wrote:
> On 15/03/2023 18:36, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add compatible string for RTL8821CS for existing Realtek Bluetooth
> > driver.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  .../bindings/net/realtek-bluetooth.yaml       | 24 ++++++++++++-------
> >  1 file changed, 15 insertions(+), 9 deletions(-)
> > 
> 
> This is a friendly reminder during the review process.
> 
> It looks like you received a tag and forgot to add it.

I removed it on purpose and noted it in the cover letter because I
changed the bindings. I apologize if that's not correct.

I changed the fallback from "realtek,rtl8822cs-bt" to
"realtek,rtl8723bs-bt". From the driver perspective that causes it to
disable runtime power management, but otherwise it's identical to V4.

Thank you.

> 
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions. However, there's no need to repost patches *only* to add the
> tags. The upstream maintainer will do that for acks received on the
> version they apply.
> 
> https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540
> 
> If a tag was not added on purpose, please state why and what changed.
> 
> 
> Best regards,
> Krzysztof
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
