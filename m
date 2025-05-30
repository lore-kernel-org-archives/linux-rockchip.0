Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A777C5B543
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 May 2025 17:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJwDdzRqMmTEscQYfyvhMfDz9X7gssQBruJvtelTFfQ=; b=ufHy+urNlErdfd
	DMPzbUE3uhe9kcPjd4ihClLPs4IAlvOCxZunbGh0abyFbA1CEr/CrP4p1eDJukMkJHS0su+eaACSi
	8C4AlYq4xnoVNgpv+53RDVYryPcQOp7z9V9abOsE+T60xInbLWHxAEaGGZc524WKLKOrIGP5yedOq
	wUj/797xl8LO03uM2Sqx7r6ex+04p04Bl4noNCuZ2pLOvtf5nB1EJV8iseYh2+pFsi7ObgaPj8njE
	85VYGfCoQPQp9r7XwrKot7c4czk4gpb54cgx8pGrQKh5/ywKUvlIF7FU03ahAirxaypSGcaYsYcpJ
	EyFRRhkVFGHV2W9JmIPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL3dZ-00000001Pln-3rEC;
	Fri, 30 May 2025 17:35:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uL3TT-00000001Oei-43r4;
	Fri, 30 May 2025 17:24:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6FEEC5C57FB;
	Fri, 30 May 2025 17:22:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EF92C4CEEB;
	Fri, 30 May 2025 17:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748625895;
	bh=Fi8xBM8N/1UJOJHg+QvBM0v5UxznL2mUiHKiHfA5xiU=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:From;
	b=WA07GutGWsgZNiDexF2R2ziRpCuD5VGsGMBidzJJNXYwr3fAn4/40SRxfqbxHNV41
	 zcUTDtgSPsC86Knw91KtxVKLGXAHVo2TPns+MEEwP491DS9HGMyFFbf3HwA+N4h0Z1
	 TdnbHnNfGrUbrQyg1fz6pfn+w30ZTooUa4LKxAyn8/vlGzaTrcjXkJbrdVKbn9V2vo
	 vdLLkw75u6tBwb2+q3y17llDCBF+laGq91eSEzZPCN3nP0lLdlIMcY5x4vlYTtQ4WH
	 Ze5Hb5tgH8x5oUUPF76E3SfWU58s+TCOXyrwjNB4/mDlGKhRUzawgiMAKqQGaTJo9v
	 WLdVLGubVBVsw==
Date: Fri, 30 May 2025 19:24:53 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, Wilfred Mallawa <wilfred.mallawa@wdc.com>,
 Damien Le Moal <dlemoal@kernel.org>, Hans Zhang <18255117159@163.com>,
 Laszlo Fiat <laszlo.fiat@proton.me>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v2_1/4=5D_PCI=3A_dw-rockchip=3A_Do_not_e?=
 =?US-ASCII?Q?numerate_bus_before_endpoint_devices_are_ready?=
User-Agent: Thunderbird for Android
In-Reply-To: <20250530171937.GA198252@bhelgaas>
References: <20250530171937.GA198252@bhelgaas>
Message-ID: <76F22449-6A2D-4F64-BF23-DF733E6B9165@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250530_102456_056223_2584A4E9 
X-CRM114-Status: UNSURE (   7.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 30 May 2025 19:19:37 CEST, Bjorn Helgaas <helgaas@kernel.org> wrote:
>
>I think all drivers should wait PCIE_T_RRS_READY_MS (100ms) after exit
>from Conventional Reset (if port only supports <= 5.0 GT/s) or after
>link training completes (if port supports > 5.0 GT/s).
>
>> So I don't think this is a device specific issue but rather
>> controller specific.  And this makes the Qcom patch that I dropped a
>> valid one (ofc with change in description).
>
>URL?

PATCH 4/4 of this series.


Kind regards,
Niklas


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
