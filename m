Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDF08C83F1B
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 22:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=t0LtdxQNAWTH2WXbS1ZQvPFoFZ4UysFLEaGw3O/mibY=; b=sr0
	+EuK8K2OJN2fkR/6tWlZtHbrqu515+s2H6CHYV9qm79tmwK8d+Ta6+GSOp1YTctg/3p88QHUa/c7N
	eFf7irFBgzVaCH7rUT3yZ4ft7V08krwjVljEdtOv0QEVaPG2dTI3mTeDoH9WqKZguFXGZP/31lCJe
	oZPtTlLvNtJDYI/kl1xstGE9nGw4uUkZy6TFT7dM8HSPyKoSKQlDvHWRZS8R5Sm1D+8qp3saNCbaz
	D1FeZ9M124MSK0nBCqAFamhccGwneWFgN2GwSX5p898F+3IrNhjHIH99QS6CpBw05c8q32V01njx3
	kmo0iXGF2I5mGWMgxMmuXS/jKZruG6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaMfr-0000000Fync-2e01;
	Fri, 11 Jul 2025 22:56:59 +0000
Received: from phubs.tethera.net ([192.99.9.157])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaMdV-0000000FycT-2VNo;
	Fri, 11 Jul 2025 22:54:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tethera.net;
 i=@tethera.net; q=dns/txt; s=2024; t=1752274112; h=from : to : cc :
 subject : in-reply-to : date : message-id : mime-version :
 content-type : from; bh=zEL+d6XlXqEpa9OVBskMukB3A3gQTghEOyqrGTQsvC8=;
 b=FDH6Y9OhJ/oMZ74hq3OD/Q2WnQ6E+FFQrNVmbRncYQtSVN08ThXiP4TnGgfLl8YlWCqAI
 csO+/ITQ7aaRoYFlwx++63/H5SnVVglEh4t2im+WxDyWbvX3VOTApD2lEVyt344JlL5I11P
 SlwDrTsFMZaqY8c8IpBS8i8Idi8/eLOWM5WpTC+FMfU+gkkA3zAMXxINgfKR2xGEGNZUCzR
 TQZ5Mq71NXKwNy4wFXIx8I2dbedeRv2/N3UFoapIh3WZ9KdmALfKvZDHw1ZjVj+/Arc/39D
 FTt1Lt4LKDItiUoGAKYSIHM/W94u+S41PugrZgis8+kUuL+4ArmqgyHbS4jQ==
Received: from tethera.net (fctnnbsc51w-159-2-211-58.dhcp-dynamic.fibreop.nb.bellaliant.net [159.2.211.58])
	by phubs.tethera.net (Postfix) with ESMTPS id 820DD18006D;
	Fri, 11 Jul 2025 19:48:32 -0300 (ADT)
Received: (nullmailer pid 155084 invoked by uid 1000);
	Fri, 11 Jul 2025 22:48:32 -0000
From: David Bremner <david@tethera.net>
To: wilfred.opensource@gmail.com
Cc: alistair@alistair23.me, bhelgaas@google.com, cassel@kernel.org, dlemoal@kernel.org, heiko@sntech.de, kw@linux.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, lpieralisi@kernel.org, manivannan.sadhasivam@linaro.org, p.zabel@pengutronix.de, robh@kernel.org, wilfred.mallawa@wdc.com
Subject: Re: [PATCH v3] PCI: dw-rockchip: Add support for slot reset on link
 down event
In-Reply-To: <20250509-b4-pci_dwc_reset_support-v3-1-37e96b4692e7@wdc.com>
Date: Fri, 11 Jul 2025 19:48:31 -0300
Message-ID: <87cya6wdhc.fsf@tethera.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_155433_822902_9CE4420B 
X-CRM114-Status: UNSURE (   9.27  )
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


What is the current status of this patch (and the pre-requisites) with
respect to mainline linux?

I'm wondering if it might be relevent to the problems [1] I've been
having with rk3588 resume, but it isn't clear to me what I need to apply
to e.g. v6.16~rc1 to test it.

[1]: https://www.cs.unb.ca/~bremner/blog/posts/hibernate-pocket-4/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
