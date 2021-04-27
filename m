Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16FF6C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 06:22:38 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3AA59613B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 06:22:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3AA59613B4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=hyperstone.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wTFTIUEnLvqixeILDwv8Ju3B1jKBWuk1rJl1dJ1BZz4=; b=n5gV5B9gRiN2FV
	G4tzggtgZVMPJ5pLxZc1rbKSWQFWkgBaRmtZY8oR28eAcefIP3J8OmFYRcJlAUZ2cmQgPFGvlnvME
	quZ05ANOdte6tSR3pGsqZpFym3gy8s87fVTwb7fzPftOx+5NGQPPGsypqB6zg0PGQDl7jOw+p/QRH
	7OlNxEIrmmDCqdirAfjPInDa54CqoYmnGoZhv4ohtIq9g8bTrmcBLv6dfxTDJyAYBHLoaXMapnu4P
	vVAkJOmUMonMz7V9O7CLC0vyESJE2oyIAZUQECzkBtjzoq01Zwf47HNenIDyW6XwoSQzCUuoVwAhb
	ZyrQg8do07yTNRg9vz8w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbH79-000qxv-S2; Tue, 27 Apr 2021 06:22:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbH6s-000qwi-Lp
 for linux-rockchip@desiato.infradead.org; Tue, 27 Apr 2021 06:22:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=/7isk6nuuVJhxx4GXDOnfgRxEsAaamMSHtesRYqhDXU=; b=cRXVRuItbtklXaFzkagkGOlxDa
 bgcaSvKUWDouya3+eSvk7cKTDar5Q4yLwwPO4tWIGK6+D3WjlXpVLeVBK5i/DSmy+7ax4PLM4lQTB
 QZE+9Fu45ZybkUa5O/cEB0HjsO174woNpYTUJ+SWODneGt7Ks05pWhmjUJ4f5UYk9c6V7egycXkVa
 6hqVEkkZtAN8UkbAGUqPvK9Ymt8CBxDFnEBn08VhDwdYha5j5/qaPcxGjl+HdMsiuFqaLhF8fpPI0
 wqTYrBIzsvHI40bGNx1G4czD3q0Fao2zD7p2zzXnKPYrvDShC62/uKp/yOJpXox4a6T0sJCceU688
 lLoRCSgQ==;
Received: from de-smtp-delivery-1.mimecast.com ([62.140.7.241]
 helo=de-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbH6o-00GTKK-MF
 for linux-rockchip@lists.infradead.org; Tue, 27 Apr 2021 06:22:13 +0000
Received: from GBR01-CWL-obe.outbound.protection.outlook.com
 (mail-cwlgbr01lp2058.outbound.protection.outlook.com [104.47.20.58]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 de-mta-37-d_heKhvxNyiHn5gO4bEfJQ-1; Tue, 27 Apr 2021 08:20:45 +0200
X-MC-Unique: d_heKhvxNyiHn5gO4bEfJQ-1
Received: from CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:89::10)
 by CWXP265MB1782.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:31::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.25; Tue, 27 Apr
 2021 06:20:44 +0000
Received: from CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM
 ([fe80::a91f:361d:5554:3958]) by CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM
 ([fe80::a91f:361d:5554:3958%5]) with mapi id 15.20.4065.027; Tue, 27 Apr 2021
 06:20:44 +0000
From: =?iso-8859-1?Q?Christian_L=F6hle?= <CLoehle@hyperstone.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "heiko@sntech.de"
 <heiko@sntech.de>, "jbx6244@gmail.com" <jbx6244@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm64: dts: rockchip: include uhs support for rockpro64
Thread-Topic: [PATCH] arm64: dts: rockchip: include uhs support for rockpro64
Thread-Index: AQHXOyz+Y+++fPZwnUCCEHYwxF4ENA==
Date: Tue, 27 Apr 2021 06:20:44 +0000
Message-ID: <CWXP265MB2680938B222248792AC205F9C4419@CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [185.80.168.10]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: db886a9f-25e4-401f-8c16-08d9094496fd
x-ms-traffictypediagnostic: CWXP265MB1782:
x-microsoft-antispam-prvs: <CWXP265MB178252640054C134136511F0C4419@CWXP265MB1782.GBRP265.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:580
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: tI5cR32TYqY6iDAioP2nCl509xqgr8+EV9You1i0FfKnb4OH2M+/OxS2k8FgvUc84UpH1cdGcCWUHwGFS82Dwd+Aui9vPzgyq/R94q8xTOBFZdpAqOZhXWAujJbCnTo8C245v3BH2XxynWbzsPNwiBrXDES/XSTKzrhhMIegE7ibTJmUG8sbtHovf4XO6HSJTS0rhjrte3Otd2DVvTmavvgIWO93cQwG3kAYIfhDfgC+8z5T9zJsWwSpeSoSp9EMtdtOynEwGAMIidVTif4LITa/p44DHEMAh0DV8R3KvX2wCwBuayc2nzbrxfnesHLpTJK1Ub30CyL92igoxT9NFt+FKViA5Fr4URd82PlELSvAF4yzbUxkPVwjp5sAIC2IdMHkHA2vuVkBOmSwbk6SwOnj4txu9jGHgpYOMu4e/jTa0XFJir3W1X/RAP06ynrWbYexZR5jFqpZrdjJ5sCBJaLlES/QojIP2NGTrxICIjlaLa7weLEdklTLbVgw8R9mE/q7MTEsmceva4UjFhXbDqv/s0et9wFexYKzsnT+Lt2KznWH8hRWCfqPrDF/poIeyehXMCGvMu8/9UrGpSukMgyyHzAIFMsXG4stvJ5p4Yo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(376002)(366004)(346002)(136003)(396003)(39830400003)(478600001)(38100700002)(55016002)(9686003)(33656002)(8676002)(122000001)(86362001)(2906002)(26005)(316002)(66446008)(71200400001)(76116006)(66946007)(6506007)(91956017)(186003)(7696005)(66476007)(64756008)(4744005)(110136005)(66556008)(8936002)(52536014)(5660300002);
 DIR:OUT; SFP:1101
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?OuWTbE2yJTeHHGT6JJX6xMAyD+CogABqu6CBA1XPWau8yHnBtOHwX/xKwZ?=
 =?iso-8859-1?Q?8KKI1xdkzzNcOXW1lO0jyg1GFDeUDdvzeFsZoNWF8loIK4ACv1GZe9yFwd?=
 =?iso-8859-1?Q?vx/KZapNgqgtZV0p/Mc5XzAGHIbHj2fGQWaiQybFwSjEKPSjzqBur3m22m?=
 =?iso-8859-1?Q?kEdzZeghIixXfjSUno6/y6fKVQfiE5feJrAC8aLwDZY8gHBrXhwZMUPLCU?=
 =?iso-8859-1?Q?0BuBtIfMN6lxuwmtj1gjrOTH6P2zo7JGFhI3CnNF54unJQarMRyEjANrqD?=
 =?iso-8859-1?Q?6rpLNmaPLtrhi0Fpgkea2LJKGK/bx6tqR1vitxZZGow8n8m1DWChPHVTP5?=
 =?iso-8859-1?Q?99llk77tX0uZWcaDZvdVEN3DG81vapQ/LTcXLB+Ef1JX1GzBfLmsK7ddLl?=
 =?iso-8859-1?Q?u5phSLJ2LWiw3qtD0tefwj3HCeFWH8ZVj2LuIUKT0ZUor6Gi5GFDuk1qvq?=
 =?iso-8859-1?Q?1n3YKQLo+SkK1abo6Yf52LEvZHIa57HcvDlmxsW4xSRYXVdkNgXr4gjug6?=
 =?iso-8859-1?Q?Evzh/aVthZof2PuIZEMoZTZmv3d8h/orVAdnB73OkaWqYSNwx6Fhj/EFrm?=
 =?iso-8859-1?Q?X3/bOmpZ8fDaVy17z96eM3tF4/Ynp30ez86DPKgwqmf+e5JVLG2dHHEktX?=
 =?iso-8859-1?Q?ha3lM/oCXhDBjiesEyRxRO4WDs+wmeLc3hWD0Cqwz08ZQyCWKp6sAJxQIn?=
 =?iso-8859-1?Q?/Po0BrkcPBEAy00mdOr/gfcYLJuHwAUq25WuG/hPDc0XEwfaE9mxfjpNN0?=
 =?iso-8859-1?Q?bM0USJjb06zOqpDJ5BWXkBznXMbjKSCJxvtu8LvZjp2+234sKaoZY9OtYw?=
 =?iso-8859-1?Q?mUc0qLd0mZcuFXCI8fvyZqcRlR7BGmog95mwy6Kv+EOgXLCSE6S6I6+e+c?=
 =?iso-8859-1?Q?13pBCbXHcZVfH2j4zlNKkSxTFAXv6yR6Zq+wVON8rOa4r7TXBEi+5U0/xw?=
 =?iso-8859-1?Q?YMx74qTztfptHB5E9juAOlW+8y4CBdLrR1n/kXppyeyW4KjzTfRVfsI5HT?=
 =?iso-8859-1?Q?IYGTRc2QyLnV7wxZa1+5+cVoGJHxk8ADnqpXV3oaY7x7RyG6S/Ze6fMd3u?=
 =?iso-8859-1?Q?5nYw5/GpFFEhiX8PtL0luLRy8QfP0DjBoYzMXe/p6ItFlDm/sxxHMWh9eT?=
 =?iso-8859-1?Q?G4I8V3D4LHp24Q7OglGTqGmd3+kLLZ2E6jy6z17fu1hOevftqxJjQ5igx/?=
 =?iso-8859-1?Q?kOFW+e2VWphL1/5HdDApxSiTGyFpacSwZLgj+yXGtnScWkN6gzRYz+RwzQ?=
 =?iso-8859-1?Q?hmp7gyf7L23WRmpmQuw5SizRQllIGhflggRjRaNu7YcWuMSQL71TlS+cPS?=
 =?iso-8859-1?Q?IAXm3eQU53uqO4MXoURxjShXhpe4L5eidmieG5VT4uQ5ZGo=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hyperstone.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CWXP265MB2680.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: db886a9f-25e4-401f-8c16-08d9094496fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2021 06:20:44.4593 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 86f203eb-e878-4188-b297-34c118c18b11
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cDVPSSfFRyEYHVkSwQz6QW8u1yUsFQAnLyuL11lr3rP2NQ9ocBRonZf6xrU629MSCUi7Fh/h0takmmKZhE1gYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWXP265MB1782
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CDE5A68 smtp.mailfrom=cloehle@hyperstone.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hyperstone.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_232211_301573_6FE6A6AA 
X-CRM114-Status: UNSURE (   4.26  )
X-CRM114-Notice: Please train this message.
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

The DesignWare Host Controller has full UHS-I support, so use it.

Signed-off-by: Christian Loehle <cloehle@hyperstone.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 6bff8db7d33e..d22a489ec214 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -722,6 +722,7 @@ &sdmmc {
 	max-frequency = <150000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
+	sd-uhs-sdr104;
 	vmmc-supply = <&vcc3v0_sd>;
 	vqmmc-supply = <&vcc_sdio>;
 	status = "okay";
-- 
2.31.1
Hyperstone GmbH | Line-Eid-Strasse 3 | 78467 Konstanz
Managing Directors: Dr. Jan Peter Berns.
Commercial register of local courts: Freiburg HRB381782


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
