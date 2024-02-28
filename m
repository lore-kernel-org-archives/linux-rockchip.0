Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07783C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 09:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEdIjTgffv9mE3Pd8Xm3KPHOvCWXGFhzUziz0OI/hvE=; b=YJmjP1+wawTxPc
	iFpMrgjPf0JX0Pnwd5HfOPrmWpFH/+IDyxLWzCvRSDxtt4IP6xUsWyf3xmwERZ5682c+sJaHkNNva
	8MMLgf4FhBE7yOc6Xtjh3hnQILpbZJQGb/G0wUD9pYh42ywgqF2xoj8Wv/DI7JmdnZk6Ndv9e514M
	myCoWNQirg+L71rv9l8Te/ANzNzJABUWdH0pYOoEzoW0aHM33uVxVkOpyBuDzvxNAd3WU0rbYqJqr
	zAQsU7EiSSqkGnhbfmw+OS/bbt0AufaGu13axvPd1bSKs0GWrGgqIAvU8VJh2e4kZadThKqU4l7by
	AwZ1a5qFqyFnbY0Pwb1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfGcG-00000008kCR-0yuf;
	Wed, 28 Feb 2024 09:52:44 +0000
Received: from mail-ve1eur01on0609.outbound.protection.outlook.com ([2a01:111:f400:fe1f::609] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfGcB-00000008kAx-3a0v;
	Wed, 28 Feb 2024 09:52:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mxjV44/SVmUYdivgI429ItsNf6EMb95G6PLRM66sms6qVHPgsXeoWhYjE8G4UBnMtgfoKZVpRbv8zQGjau4/QvkBqWqk/VaPJnfo4YhBspGjoPgJu50Xv4NfaFKmITWUwqc7vj51kNYca0YYrKkqdGmR/zBhlrNKWscQPnG8PjGN1SZcIilwR0tcYQqdfbwO2pB5ld44BPuovFk05HKUWLEj6UklCYCXwhaAkjpYMXFud2QWYfnoMm8UbDWiZCIO20y7nAxfEGkzjsSr2BFLPZkuvXh1xF/aGkLKhcSDqeFjiH/xiRgf6N8++4Zbyl8WL2NpwXWY3QPr6mrbvn5cHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9u7vJW6fq/K3JQkqcX2yex/+pBIJ0gT6VykRuVsk3as=;
 b=lnVR9o0EX5vw4D90jsKIJWexrHtYL1YjvNi13Q1yOSlzIR+g4HHuUv7491JBl9keNAbKe7Hcq7PmIAAzLj89Ua/XG0EmrLurz00jfWiidNEKOTO+rzD/z84h2cGpwn4Mbx7N5sr+Sp/vG/F1Yk26NDMtWx6kHKErVb2hwIr4EKYEhJ3B+XZ3TgVyWAtRciZARbor3+LklV1E/HdIang9oKiL8aziKmR1NBI2dv/mUYXIXBL84bk5fhowSR8O6eAEAeZwIbHk6NdueI1FXAoY7+aRo/CzEy1oashMt06HGdrO1geiROSjlRQKvK1L9IwzkhCYjNtmVu/E1NVBIErw8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 195.60.68.100) smtp.rcpttodomain=debian.org smtp.mailfrom=axis.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=axis.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9u7vJW6fq/K3JQkqcX2yex/+pBIJ0gT6VykRuVsk3as=;
 b=Dl4Z8xAQeRGUvQG92BS7LzrgrYHHz9LDo4GeySVSd5ER0D8RbxUYY0BL2CBeHePXjSsNNJYp5V5wz46jBann/dm3M40s/jDVdTvma9RBLm+4MSEjK9feqkTuYNpSqmhYioP2S76tuprIlgFiIM7uSRpryWWTmXyUY2f58jBhs0o=
Received: from AS9PR05CA0056.eurprd05.prod.outlook.com (2603:10a6:20b:489::19)
 by DU0PR02MB8315.eurprd02.prod.outlook.com (2603:10a6:10:3bd::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.23; Wed, 28 Feb
 2024 09:52:29 +0000
Received: from AMS1EPF00000046.eurprd04.prod.outlook.com
 (2603:10a6:20b:489:cafe::f2) by AS9PR05CA0056.outlook.office365.com
 (2603:10a6:20b:489::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.49 via Frontend
 Transport; Wed, 28 Feb 2024 09:52:29 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 195.60.68.100)
 smtp.mailfrom=axis.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=axis.com;
Received-SPF: Fail (protection.outlook.com: domain of axis.com does not
 designate 195.60.68.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=195.60.68.100; helo=mail.axis.com;
Received: from mail.axis.com (195.60.68.100) by
 AMS1EPF00000046.mail.protection.outlook.com (10.167.16.43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7292.25 via Frontend Transport; Wed, 28 Feb 2024 09:52:28 +0000
Received: from SE-MAIL21W.axis.com (10.20.40.16) by se-mail02w.axis.com
 (10.20.40.8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Wed, 28 Feb
 2024 10:52:28 +0100
Received: from se-mail02w.axis.com (10.20.40.8) by SE-MAIL21W.axis.com
 (10.20.40.16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.34; Wed, 28 Feb
 2024 10:52:28 +0100
Received: from se-intmail01x.se.axis.com (10.0.5.60) by se-mail02w.axis.com
 (10.20.40.8) with Microsoft SMTP Server id 15.1.2375.34 via Frontend
 Transport; Wed, 28 Feb 2024 10:52:28 +0100
Received: from pc36611-1939.se.axis.com (pc36611-1939.se.axis.com [10.88.125.175])
	by se-intmail01x.se.axis.com (Postfix) with ESMTP id 4B947153FF;
	Wed, 28 Feb 2024 10:52:28 +0100 (CET)
Received: by pc36611-1939.se.axis.com (Postfix, from userid 363)
	id 45EEA626E7; Wed, 28 Feb 2024 10:52:28 +0100 (CET)
Date: Wed, 28 Feb 2024 10:52:28 +0100
From: Jesper Nilsson <jesper.nilsson@axis.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>
CC: Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof
 =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Helgaas
	<bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, Lei Chuanhua
	<lchuanhua@maxlinear.com>, Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>, Jesper Nilsson <jesper.nilsson@axis.com>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>, Yoshihiro Shimoda
	<yoshihiro.shimoda.uh@renesas.com>, Serge Semin <fancer.lancer@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>, Rob Herring <robh@kernel.org>,
	<linux-pci@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v2] PCI: dw-rockchip: Add error messages in .probe()s
 error paths
Message-ID: <20240228095228.GF30969@axis.com>
References: <20240227141256.413055-2-ukleinek@debian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240227141256.413055-2-ukleinek@debian.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS1EPF00000046:EE_|DU0PR02MB8315:EE_
X-MS-Office365-Filtering-Correlation-Id: b3d088da-c204-43f4-55a5-08dc3842f9be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y9MqdAs/q6F6wfgXHINWT4dkvzL/DZPWaGzXECYw6uovr/wtbhlq6N/Kbi9Dv7NGVJ2tzrF9A0f5YlGYVqU/cr7U7k6eYfP5JJQxTa0hK2uClhI0C1TgKPaTxpFifGBdWkDl6MWAcBlWz5B9MbRa/kAv7DuF92RR93vO5untXFTH3vWzuge/7zLbPef+AVND6k2nwirICXy1pkEolpeNSDCnhDvLAIOXABlDkfo3GNxL+Hm8I7FX1rHatCRZwiBTrrxUcXBOni0A5Yaouqwf2fFq1tIZJO9A565rJKOciRd95SNSfedzpfjQdl3QW6+d8MXotPdvfxLiVY4liB/zcASMrxKv9vRyO49E72nMesAjd/tO5LZa7BGrLKPdZQXcvN1fL3kV/EJdCyaG9v5bg+7rpK0WuwIFkMDEBKxK0XT4H37cZ+PJyUq4+6Vf36UMUEylxR4I1wHHEnmkFwgXCFr21H445VJeZG1uJ0EElmeOKQ3IKsNwTIcGIMWIVZl+9SmV+DX9uGLXdkPKP9cpCGSUrCDsDRZTAPO1HuFFVxtV4KbXCqXrX49gQYamTUG1j6B0WB6RUnh1OMVzK6jVFlLgp73UVTBLGHI17lpVYdVcGjTdHWuY4heLcS6VPukC/btWzjal+cAS31gX7UVqJAHY62kuvKZXRT4jWAeOpU664o2PqPTOf7rsY7K1K1tdcpXaHbKzRWWZqJLvMz6Ab9g+MzOb3W0hwbH6ept478nt9KHq6h/YBIpahTH9LRMT
X-Forefront-Antispam-Report: CIP:195.60.68.100;CTRY:SE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.axis.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(82310400014)(36860700004);DIR:OUT;SFP:1101;
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2024 09:52:28.8296
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b3d088da-c204-43f4-55a5-08dc3842f9be
X-MS-Exchange-CrossTenant-Id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=78703d3c-b907-432f-b066-88f7af9ca3af;Ip=[195.60.68.100];Helo=[mail.axis.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS1EPF00000046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR02MB8315
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_015239_924204_FB7E84B5 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Feb 27, 2024 at 03:12:54PM +0100, Uwe Kleine-K=F6nig wrote:
> Drivers that silently fail to probe provide a bad user experience and
> make it unnecessarily hard to debug such a failure. Fix it by using
> dev_err_probe() instead of a plain return.
> =

> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Uwe Kleine-K=F6nig <ukleinek@debian.org>

Reviewed-by: Jesper Nilsson <jesper.nilsson@axis.com>

/^JN - Jesper Nilsson
-- =

               Jesper Nilsson -- jesper.nilsson@axis.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
