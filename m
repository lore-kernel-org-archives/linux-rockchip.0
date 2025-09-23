Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DF9ECAC5B0
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Sep 2025 13:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=b2AZh3LNQdYFvitwUiGZJYB6MMYvXkzG+YH6NWZUqVk=; b=DpE
	iYfHvOYaqahW2mIBYKNa3KHLTqhbUtUUaLB6049YbH9quhZjiLsnIh/lcceH8E/PXcaN+5ZoQ3M2H
	MSzd1aNG+9IgnUNmqOBGvd/f8ktWq7ZO+HM1g0cQtcnX7UxQ4L6T8hPcpyJDiabbid7nJ/aU/Nb0q
	92W1j8tfjT58Ya289X3q/g+k1l0Tmcz8UPRLE5bqO+HmU/eC8fmzweItBpvEsMnbu+/VvqRiYwq7Y
	r+8cVpbosLUMncIc9Ev69xwjUoC8W0rIwMARaV4Q7NqLdQbTBySW+oVXKm8rUwRS9S3RY62OWfgmA
	2q+kCgQiObXjkyqpcBdIUTr5s18hP7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v12qX-0000000DSgs-3E35;
	Tue, 23 Sep 2025 13:14:17 +0000
Received: from phubs.tethera.net ([192.99.9.157])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v12qU-0000000DSfF-3KaC;
	Tue, 23 Sep 2025 13:14:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tethera.net;
 i=@tethera.net; q=dns/txt; s=2024; t=1758632774; h=from : to : cc :
 subject : in-reply-to : date : message-id : mime-version :
 content-type : from; bh=2sItBj+QU9qdXvNcIECQjyDp7nGnsVveQgohkd3EYmM=;
 b=fhY2a8K3+6Pqc7obdcyMoOLs2tg8wCZkGhoAXWA9670cPb67vtaRWP6JtAARfUpFAZs84
 IBx29vHM9Jx0C1WoHSU3HOMtKhfHw5OnrBD+qJSNuOiojlAoGPpdI0n1yFXcRmoPpqvBWqB
 LSjVz2iXNeb1Rls66wn8GHXud1K2QVXMf8Y4NfvWZTcPd9lLXJU0CS5b6+ufgxB7chZsJF+
 6SjHwRsZcTCiego5lqemkQ0b9qFxDqd0YGom6xqLJf6fADTwDxQ3SGawi7Cgsn5CMrpaTPN
 0ljaoj5ya23LZ0i0WKjwBoVlytOr/Jv7PCE/+FUWnn2ho0ZGTF7eooo5zMjA==
Received: from tethera.net (fctnnbsc51w-159-2-211-58.dhcp-dynamic.fibreop.nb.bellaliant.net [159.2.211.58])
	by phubs.tethera.net (Postfix) with ESMTPS id C93D818006D;
	Tue, 23 Sep 2025 10:06:13 -0300 (ADT)
Received: (nullmailer pid 1548093 invoked by uid 1000);
	Tue, 23 Sep 2025 13:06:13 -0000
From: David Bremner <david@tethera.net>
To: devnull+manivannan.sadhasivam.oss.qualcomm.com@kernel.org
Cc: bhelgaas@google.com, cassel@kernel.org, heiko@sntech.de, krishna.chundru@oss.qualcomm.com, kwilczynski@kernel.org, linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, linuxppc-dev@lists.ozlabs.org, lpieralisi@kernel.org, lukas@wunner.de, mahesh@linux.ibm.com, mani@kernel.org, manivannan.sadhasivam@oss.qualcomm.com, oohall@gmail.com, p.zabel@pengutronix.de, robh@kernel.org, wilfred.mallawa@wdc.com, will@kernel.org
Subject: Re: [PATCH v6 0/4] PCI: Add support for resetting the Root Ports in
 a platform specific way
In-Reply-To: <20250715-pci-port-reset-v6-0-6f9cce94e7bb@oss.qualcomm.com>
Date: Tue, 23 Sep 2025 10:06:13 -0300
Message-ID: <87ldm548u2.fsf@tethera.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_061415_024791_1B3626A5 
X-CRM114-Status: GOOD (  10.61  )
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


I have been testing this series on the 6.17 pre-releases, lightly
patched by the collabora [1] and mnt-reform [2] teams. I have been testing
on bare hardware, on MNT Research's pocket-reform product. I'm afraid I
can only offer CI level feedback, but in case it helps

1) The series now applies cleanly onto collabora's rockchip-devel branch
2) The resulting kernel boots and runs OK.
3) the resulting kernel still fails the "platform" pm_test [3] with
 "rockchip-dw-pcie a40c00000.pcie: Phy link never came up"

Of course there could be other reasons for (3), I don't know that much
about it.

I'm happy to test a newer version of the series if/when it exists.

d

[1]: https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux.git#rockchip-devel
[2]: https://salsa.debian.org/bremner/collabora-rockchip-3588#reform-patches
[3]: https://www.cs.unb.ca/~bremner/blog/posts/hibernate-pocket-12/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
