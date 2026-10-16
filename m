Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0247DCCA462
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 00:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WA41RnL3GJY1CXMH+e4FuhEiAlUmtmPEpjibj6QA33A=; b=T2ZznH7tp7mBdr
	04L7IbMPBhb3VonuVKzpoDpIX5XOLDwd9uk4UXntTVuOyrJE+lA4jZo7ksL+9aAzhiYo4mD1Vjx2/
	ArFP68nc5VRWVfhDlEl3oU9mmS2mvjZmFfMnAO/SkcQpFEJx+tRJcB3t+Z9897Wviq6ssTpmHOVNi
	WCcu2sVOyYpIoNy7hPh5O3D0vAmSr3BN86rXug8mJ5w2+XcShyy9vUDgtZD6FnAmrWI8FcHM9Nqel
	U6Cl/FQyShXXOeNhf0jSVMLnCwmBvfjpAxxinA6Vn2+mPXrmkawsua2oIQU0NGBLX2RyOsm0XgovP
	jIXxUBryV1I5vi6/SU+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHVhy-00000001c1J-2pkr;
	Fri, 16 Oct 2026 00:22:02 +0000
Received: from sender-op-o17.zoho.eu ([136.143.169.17])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHVhw-00000001c0q-0N1j;
	Fri, 16 Oct 2026 00:22:01 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1792110110; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=fraCKwKX0fzN5fIIcWea1PgSkWDBUI8OyAjCzt7eKbksO8lpjZJBQ6Ctzk0YsGQjaYpsF0pIgkDoEHjbF3G+xAtfSus19YCuhSmzJRBHpTPTmMf9vKivKk8X1XKENOgAc/1bku+z/Yq4t87A7ntjpCwHyPD8ThLT2jYXChmKunI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1792110110; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=q/KULuIQAtVhjOrq/I9pow3roLZGV4T+euRV0IgVIXA=; 
	b=NT0LSbcnrdnwcnUdPKnGTczpqXGj2EoPl9sDZs774SGcdP6Aaicb+ZQ7cgpIWOHP56BaD2SPOOfcVvLU9Wd1Iu2cylCXP7ChBZ2aXVA5eJgMWbRa9FlAO65Ao+sHAUrJAOR+xoQYe6au1gKYr50oINwOrtc7rQq/JMgsZT2keII=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=iav.lv;
	spf=pass  smtp.mailfrom=iav@iav.lv;
	dmarc=pass header.from=<iav@iav.lv>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1792110110;
	s=zoho; d=iav.lv; i=iav@iav.lv;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:In-Reply-To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=q/KULuIQAtVhjOrq/I9pow3roLZGV4T+euRV0IgVIXA=;
	b=XHXnt2szDmIb1ZtOxhXdd6InOuBLO0IBNrPCTcyDXEtqhCSC5paP3qei6krP0kof
	UIY4p0kGXAdMv30d6vkqoS8ZaZKr2vyJ4WgqoA7clpfuqHSUhLadjSwkXARn2U94K7V
	IN8fl3X4veU40Fm7GAEj2F3QbFhI/lgUeeMZGYK8=
Received: by smtp.zoho.eu with SMTPS id 1792110108025344.3056124488576;
	Fri, 16 Oct 2026 02:21:48 +0200 (CEST)
Date: Fri, 16 Oct 2026 03:21:44 +0300
From: Igor Velkov <iav@iav.lv>
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: =?utf-8?q?Enrique_Hern=C3=A1ndez_Bello?= <ehbello@gmail.com>, shawn.lin@rock-chips.com, lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, bhelgaas@google.com, robh@kernel.org, heiko@sntech.de, dlemoal@kernel.org, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org, Igor Velkov <iav@iav.lv>
Subject: Re: [PATCH v2] PCI: rockchip: Skip the Tpvperl wait when power is already valid
In-Reply-To: <179196286749.38040.5597453767131590054.b4-reply@b4>
References: <20260911211559.207990-1-ehbello@gmail.com> <179196286749.38040.5597453767131590054.b4-reply@b4>
Message-ID: <20261016-h64-pcie-resume-tpvperl@iav.lv>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_172200_425816_4041F82B 
X-CRM114-Status: UNSURE (   9.99  )
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

On Wed, 14 Oct 2026 12:57:47 +0530, Manivannan Sadhasivam wrote:
> I do agree that the Tpvperl delay is *redundant* if the supplies are already
> enabled by the bootloader. But I do not agree that it causes the Endpoint to not
> respond.

A data point from a Kobol Helios64 (RK3399, JMB585 on pcie0, ep-gpios as in
the mainline DTS):

- Enumeration at boot works with and without this patch.
- Resume from s2idle fails in rockchip_pcie_resume_noirq. On plain v7.3-rc7
  with the mainline DTB, 13 cycles pass and the 14th fails with "PCIe link
  training gen1 timeout"; resume_noirq returns -110 and the board resets.
  On an Armbian kernel with this patch (all supplies stay enabled across
  suspend, so the wait is skipped on resume too) the first resume ends in a
  synchronous external abort in rockchip_pcie_rd_conf from pci_power_up.
- Plain v7.3-rc7 also hit an asynchronous SError during the bus scan at probe
  in 1 of 4 boots.

So on this board the resume failure does not depend on the Tpvperl wait.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
