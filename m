Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5879C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 May 2022 02:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:CC:To:Subject
	:MIME-Version:References:In-Reply-To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HuurxkbGEcA5LgHoYGwWUz4vvw22EU2n75i19CbA+kE=; b=HIvWX95cEsnp3i
	wBkiPoGLY7XINiVXBVkLMq0foyaymjs+ZVW5KJY6QlU9fhJwxLmnTsJ3iObUzg/V22FhdVp/vuOAH
	PTLWRKbFVgpm+W+l/JdJXubGMvi3KVxU9pGKI9qF97BVeCh/8l4Hq4cXnaee5ZRJzVc/bNaq6Yxpk
	dPY5c8aGlMFb/dL65Vhd9aKideALminF2Wp4BWnIxpiUdxzaSuiIHYhMWGm/dL2sKwCudMlgPK8jy
	XwhjzBTkfJqgXjB6tApA5/KbdBOKlwcBzKbNbhABC6PkrcPKDE7aLoZjS77c81l+Qw2GJz3Rw+L3/
	TmRBSRHi2uNtVQT+nWOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noz1s-009bT9-9g; Thu, 12 May 2022 02:58:16 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noz1h-009bRt-BT; Thu, 12 May 2022 02:58:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1652324278;
 bh=rBD/54OGORHu5g6jadCEHPsFOTceD/67+Fe7usVP7p8=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 CC:From;
 b=KazeE55U8nVvK+M0iSc2xW8hilgl4LsQh0p2Hq+oB/1oNOLtC363o4x+bhzvFnLGt
 11eZ7OXsCyqvkkhvXjJMdKGeAj5+8gaGINwEqt/Y0rWBpiJhGOCZQ0nZ+6qV/mYn66
 pOP7N2clL4x0FJHOvbaAUhA85AzuCIk5cdGIkdro=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-s9 ([157.180.226.179]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N33Il-1nutRi0pbh-013LOo; Wed, 11
 May 2022 22:10:23 +0200
Date: Wed, 11 May 2022 22:10:19 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <9E2565E4-DBF3-4324-BE1F-4C20C6FB95EA@gmail.com>
References: <20220416135458.104048-1-linux@fw-web.de>
 <9E2565E4-DBF3-4324-BE1F-4C20C6FB95EA@gmail.com>
MIME-Version: 1.0
Subject: Re: [RFC/RFT 0/6] RK3568 PCIe V3 support
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Frank Wunderlich <linux@fw-web.de>, Peter Geis <pgwipeout@gmail.com>
CC: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-phy@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-pci@vger.kernel.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <A93F0CED-D363-4B16-BB49-2EFB569F0EFE@public-files.de>
X-Provags-ID: V03:K1:xhkaGCZurrZq98AQosYA1qdyfC2dWrfKqJ5+bZbZfcK7P8zcRjz
 AJs3LMH3ZRysCQK+yzpB9g5BzhV12dHBLpsi0IEhxg6r/jWwfIUFv9liVu1Cq/HrCNpgb1F
 SBZltFMe5jjMHL6cgsK3URh38YciE7y9fbSuq6WjdQ5Nvs4LlfUQQyyFXTYbNX7aYA5Dj1h
 L3+HRpoCa/YhN8u4q8sZw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:48iYLKn43ug=:EomdsiWGstqYll791xh343
 LX+AGgncrsaHMEBEc/hZAog/juX8bJdJ/fFNABJRqfIoH1gmN8hClxOBHtwFNvqYxIju7Rrzx
 EOIJ5BCrz71ccFnIYFcw5RbGeyavpruNZPD4WB3MZgK2bGU/34DcnGbQ6wyAC6nFJW3nfEjaT
 4rfuSknRt/gTEenUrtct1d2xnN2TnyNPwSdLIM4NhBkFYV0tUAXCUFldXbng5UZULTb/aQUbI
 MCH8W6yMGa54sabsnzYtzdxnQl5+oA3CpnxRdLEn/IGYb74ettqB1OpzAJPFdsR2ySKtEkrwJ
 dPuI9jDrCKMQqSXRW2Nk1ZElXT1rBJAoLWCcXN/38gD2wa/o/lZC97mf2LrS94ck89x2wDlWx
 4Q8R8ac4zr/q+Nuv131osGDgw/RPRH5CLOJCMBRKX/1g1Rlzk8LSuLljpBrYLCA5rETUmzq/C
 V6VhQQuHQTQ0CD1mf7d7Chkn1YIYPICCDlXnyfJ8JELK4ZAPtt5L6WXJdor2dmvhqtBqwGPBy
 w74+zvt2+64yWmHqK65RUgwuXzys/kw0QpWH8musne3wD6yISVDq1U4bOKymRxEAs1NQfdbi9
 2L36PmRFje7Ci1CuoJVxRGigQUS6Z+ItvPIQ4xv76S04fTO/hZ9lMd0h3Dz6XLZexH/rmpDWU
 mdkQwZD6yIF2uBU4I0AlvmxaGd/aKB/qgJW8lft3h2j6KoK8wwM6t1HsHSx6tVvC2K6F+MGFS
 zchQTHUJ0IWCgxOpud2PNV6Va54Dzdc89P+7ekwq9fmR6HhaU8Uv6L1sSk6kaG6c14xo1jRjh
 P4smfK9Saf4iKAE10qb1377sxWjx+5i9UqvXWAv5P//1TKcrGSNaGm/4iM3/6UADC6jQgBkF0
 CMVS/QH81Q2h8/FIARlWvsPKCSVOm+qsxK/ikkziHzd6S6W9ABDzZAMxwS/2YYDtTJxy2WCcv
 rJMpYQVNMhGwQco89p2kpRmnCh+t2iL7yj+ZoEdZspyoCAARRUC9v/HJ+q3w3mWb+IXNGf2Yx
 o2qq4k7InhSMRtElZzk68mXKvhEFt4htJsGXD3i3yeRcsgpSp92jYnh0nla7MEkanPUVRBq2L
 FO5FAQjwwGhgmd3xGC6C7j16MR5exENjXrC3TB9f4EA9CAE21osg7CEEg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_195805_868064_2224C022 
X-CRM114-Status: UNSURE (   4.70  )
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
Reply-To: frank-w@public-files.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am 11. Mai 2022 21:26:09 MESZ schrieb Piotr Oniszczuk <piotr.oniszczuk@gmail.com>:

>Frank, Peter
>
>FYI: 
>This series gives me nicely working PCI-e WiFi M2 iwl7265 module on
>rock3-a.
>Great work!

Hi,

Peter recently made some fixes and improvements. I plan to send new version soon.

You're welcome to test it on your board and give a Tested-by tag
regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
