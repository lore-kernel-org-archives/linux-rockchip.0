Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFE0C47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 07:08:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7AD9C6120F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 07:08:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7AD9C6120F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=hotmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W5wpS6MJjsv/UiUGQzmloygrA5CiTmab+Ar5gLl/Ij0=; b=nGST0ny6xrM2A9
	me66B3Jm//mn7Gmnpjp2fTJpdCH+TyU+bAxfsYzq1NGaOhZ3TkFvuH9u+QQ5xH/lGgbbQoYIjWqOR
	4fMhN2uNAbpyB0cVQuDvDnqxGqC16o+8i9KOrIU0et1AeN+6ho6CGjQ6XYmonujaQtuBMbYUQ65zK
	lL0VjyrPzqLZ7oiaI7zE0/Ij+B7KkTkeXG1I185TIHFPsYrNOqMJraG7EbciDgTXbCZtg+z93u361
	wACDhhbaLu+b2jq+53wgA2bVEfmOCIVuSENy8B9Zq9Gwp2Paln2xKCtqoVvyLsUydNOKna8skail1
	Qig9IScMIAPn8eNRziIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lq9NH-001uwi-6K; Mon, 07 Jun 2021 07:08:39 +0000
Received: from mail-am6eur05olkn2108.outbound.protection.outlook.com
 ([40.92.91.108] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lq9Mo-001ujG-38
 for linux-rockchip@lists.infradead.org; Mon, 07 Jun 2021 07:08:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P4RMoa6d0EfLOi0os5fyA8G9eZNbXSpJ5vGSksTuBWFO+AByVSzib7ls+k05DY+bqM6li10+j+CHPPrhNPYiGy632OPI3qhTZb1s/V/c9i4c0z3ZE/rb7G1Ve2JDE19AvMGgY+Pk6q2xoMSJnQGsBVZHrIq9sqOZdL5kLgFF3jrQhbf8feYSZ06sgQ44aEIROxxxJVZ0VvZO0mErkaSisoZlJ6P67MzGMB7/dwmbRvQueOk0brT7H5uhUWAHGHjrm0hLR3f6HwJI8s2ajXpA70L9P5LNwYBTxq6vn30Ozzye7Cdg2TDBi+BFY3jkTnajG4ILUuGEsqq7CjBVHi4oYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SIOdH5HkwXnNq2KzBm76OAeK6kz46jvONxGPrfHRSIQ=;
 b=hEkRI8apssUJJ1yrRizgy4Gn2mAUcRBaDtV9CzlrzTZrVtM8jASyeWzVHmvh3VV5PzqDQwcouLcvAFnqyg4MnbqFX3sh8bhsN8HNkOTLrX5THxLLdSH/0zJcU+gPvsLUWKQJ/xoUfS50X9xkxdSUkbAlofapXHwBc02q3FJI9s1ogQ20YBZdiDm+DTzclj5BO/ExF3RDqPJPniMLD8lHSMlVxfQi44jeoMTvHDcrWPIHANpM8efWCRxh/e+GPFCTk/6ysHGA3r41KPScwTLN1vdfAwG2VhNZyRiKjkKSoyofL8nY9yx3MxavRcKMaZO0fymyeU1mm+tfeq0tgbOCsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SIOdH5HkwXnNq2KzBm76OAeK6kz46jvONxGPrfHRSIQ=;
 b=NkbOsOkaiVmNUrrR32oivvuZ1r/c2SNpDySmXvaeHBuWHLONAO1gbpcLHc72Qgl5RD69wxzC6R3CwHgtI5hCVJ0x90pQL0f8lYXAsHq+25ZqW6zkwen8lA6h9ij+ZgEDDlzrgAe4WQ1+6KJsjq4xxUSkf0686nHDq6f4/TJZ0TjobVqEe0tYzO1FSd/l/kNfkMJQQhehaNyHZPWK++bxhZtBifW4YcqKxXU2ujrwBwLArpzdXXcORhxXZQ+TJbwEK5KeQ5UvIf4zNVei82IaaWRDhOBtEWYCAHlPSBxYNHomlaU8WYPKDjRVbriD4ovNscCucSLMWQcv2LjNDnfclw==
Received: from AM6EUR05FT064.eop-eur05.prod.protection.outlook.com
 (2a01:111:e400:fc11::53) by
 AM6EUR05HT141.eop-eur05.prod.protection.outlook.com (2a01:111:e400:fc11::461)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.18; Mon, 7 Jun
 2021 07:08:05 +0000
Received: from DB9P190MB1436.EURP190.PROD.OUTLOOK.COM (2a01:111:e400:fc11::43)
 by AM6EUR05FT064.mail.protection.outlook.com
 (2a01:111:e400:fc11::276) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.18 via Frontend
 Transport; Mon, 7 Jun 2021 07:08:05 +0000
Received: from DB9P190MB1436.EURP190.PROD.OUTLOOK.COM
 ([fe80::e920:90bb:5071:2e99]) by DB9P190MB1436.EURP190.PROD.OUTLOOK.COM
 ([fe80::e920:90bb:5071:2e99%9]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 07:08:05 +0000
From: Mohammed Subair <msubair@hotmail.com>
To: "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: RK3288 LVDS mainline kernel not working
Thread-Topic: RK3288 LVDS mainline kernel not working
Thread-Index: Addba4neeaI81uSYSQqJ9879ma9qPA==
Date: Mon, 7 Jun 2021 07:08:05 +0000
Message-ID: <DB9P190MB14364F24107C2A7733E09710BC389@DB9P190MB1436.EURP190.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:8499FB64F35075E46F1BC581BFA629204C72656412D43801FC3BC81C14BDCFBA;
 UpperCasedChecksum:7ECFB806FEA45F7E34BF165D835DD77BB6352C656EE7D8414EFCA8D0B34DB8A2;
 SizeAsReceived:6645; Count:41
x-tmn: [Yd9CyDREb52PFUHPjJE5zYcRGJG2PqGb]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: eecb553e-e151-44a7-8709-08d92982ff64
x-ms-traffictypediagnostic: AM6EUR05HT141:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h0+9CY89oO75QYAlwjgvvSF0pS4UHiTENsM3HmoeCv2zkrj2bRUdFLKOvdgewm8R1sSZEDiO9IWT4jI/LDsoBrA8yXbT3EStfOY3t40jKqWOx8uDHxY7gjvvxyJaRNcOxUtZ44xM+GtU+/IaaBYvro+gMqFjngEJGXUDYP30tyKpAGqQiFf8r0KRZt4OuUmJlCm1/iD4AE5H1fbqX83/t/jZqBKKp/ipPOatX8HJnS9CR7o0nGDAUWoE4vT2mPDWbmwIT4r54u9hnzc35983fvPCWjr2Is+8DSTbcP8+HSdIxGI++QeL7n8xTS0+cBsR+o9qzHQNYvyKpkAgQBTZyigqtKb9/ozlEUSDo3sWNgGNoBYf0mQ5N/PjU5GPwkfn
x-ms-exchange-antispam-messagedata: WjfgzzHyF3utDWjagrj7XvWPK1JPgBF87FRxt0njZTa8qEPVn5/b8NlIAOUtFmLQjcHM2dS0hghsbJTKJH01a0MUZmZjTLSYHof72EHQ5sqVhNZpvzAnnGgmmyuyWrQKsgMkI8IPyONOBwCTX0f1nA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: AM6EUR05FT064.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: eecb553e-e151-44a7-8709-08d92982ff64
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2021 07:08:05.5975 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6EUR05HT141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_000810_253469_7E2BDC36 
X-CRM114-Status: UNSURE (   7.63  )
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

Hi

I was trying to use latest mainline kernel ( 5.13.0-rc1-00062-g7bb4870abf84)  for RK3288 with LVDS LCD and it is throwing following error, 

root@3288:~# dmesg | grep lvds
[    0.069518] platform ff96c000.lvds: Fixing up cyclic dependency with ff940000.vop
[    0.091485] platform lvds-panel: Fixing up cyclic dependency with ff96c000.lvds
[    6.797029] rockchip-lvds ff96c000.lvds: [drm:rockchip_lvds_bind [rockchipdrm]] *ERROR* can't found port point, please init lvds panel port!
[    6.797113] rockchip-drm display-subsystem: failed to bind ff96c000.lvds (ops rockchip_lvds_component_ops [rockchipdrm]): -22
root@3288:~# dmesg | grep drm
[    6.785616] rockchip-drm display-subsystem: bound ff930000.vop (ops vop_component_ops [rockchipdrm])
[    6.796897] rockchip-drm display-subsystem: bound ff940000.vop (ops vop_component_ops [rockchipdrm])
[    6.797029] rockchip-lvds ff96c000.lvds: [drm:rockchip_lvds_bind [rockchipdrm]] *ERROR* can't found port point, please init lvds panel port!
[    6.797113] rockchip-drm display-subsystem: failed to bind ff96c000.lvds (ops rockchip_lvds_component_ops [rockchipdrm]): -22
[    6.797425] rockchip-drm display-subsystem: master bind failed: -22
[    6.797463] rockchip-drm: probe of display-subsystem failed with error -22
[    6.950807] [drm] Initialized panfrost 1.1.0 20180908 for ffa30000.gpu on minor 0

The configuration is exactly as shown in the documentation on the kernel.

while the display works without any issue son kernel 4.4.194

see below configuration,

	lvds_panel: lvds-panel {
		compatible = "auo,b101ean01";
		status = "okay";
		//enable-gpios = <&gpio7 21 GPIO_ACTIVE_HIGH>;
		enable-gpios = <&gpio7 15 GPIO_ACTIVE_HIGH>;
		data-mapping = "vesa-18";

		port {
			panel_in_lvds: endpoint {
				remote-endpoint = <&lvds_out_panel>;
			};
		};
	};

&lvds {
	status = "okay";
	lvds_out: port@1 {
				reg = <1>;

				lvds_out_panel: endpoint {
					remote-endpoint = <&panel_in_lvds>;
				};
			};
};

Any help appreciated.

Subair


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
