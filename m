Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08772D2C55E
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 14:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvjIcUKz3pv0mHurD+yGyLCbMZwgdutGNPZp5xPWBoo=; b=c+ZVfqBIBIA6g5
	foDQaoR9o6qG8fLhTTKObPK050QKCowyA73z/V5eJ7vhQq4k3N2pbezljGYebxrKKNbbbfDB0Ux8w
	J01gca2ueUc3a4v7T/hnhuXOMjAU+hKYqhduHZklw+PeUgfUGspcuXqc9OEAaUOdBXfrMxQi1cFbS
	i6CqhhWYQMmMc6NhP0v5sFTn5juQvclOze1h3gKHrnYZMOzMVOCC9KdhGDVXpZbgBjN0grPbtqTpN
	y23UdQ5WxLxI3/R/s7spcSoaFAJMa6QCRmKTs9Ypb/1waUCnntL1plsuHitvFHw7rk9MVX0XhVziV
	wx3KC7YOcauGsH6B/Ugw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Ffm-0000000B4NS-41Wl;
	Tue, 22 Oct 2024 14:15:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Fcs-0000000B3pl-10UW
	for linux-rockchip@bombadil.infradead.org;
	Tue, 22 Oct 2024 14:12:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=g0irb+F77WnVjMuez7xkixictTS4bNgd6QpFEkx5Soo=; b=OL9BdU0vyzYJB+QSMjp1Kpuzzi
	5Vpd7SfTv8qccvNBeyXfIn3GRfNYzbtnx5Af1RsXffacOV6Bmh2Awqv6B1zVJ7qxKzBYXjwOhbt9u
	n8Aww8cYCZRaTeV+/axaY76oJWB0k9bRgS88QTcwyYEx5dJ2KAUKaZAYUG1pHOBP3POeEm+LwM6N2
	ktsK7pKCnDusb/aGumnaEK6iYnEPKjIeOlG/Ki8ecY2n/VptKZZwJ7Vop+Ap2vphm1PM2xGyjeOEv
	Ayt3ZPXuWYeFBz2DBlo6f76V0/jNQh5L9mAXq+KfNIHeYvGGyOtYXqKHKXeSGesCIpDzrObQinM+h
	ibwsOHMQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Fcp-00000008E5N-0znQ
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Oct 2024 14:12:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=g0irb+F77WnVjMuez7xkixictTS4bNgd6QpFEkx5Soo=; b=sOXToDbcIius2mu3xgoMFUVWVH
	RwkmfF86M6S4zvKgnofse2fRla+POrLSgNBAUPPnRmL0Uib2inC8gQ+JechFMLSxFBZ/xkYTJ2JE2
	dffRLM94g2LvYp/Xd/fKkMcb62Cu9glgHuohhfVPJe0r6sHvc5pJlaz55gA7lvc3aly6CC911aH5w
	NfEQv2GZIbN005qhZ0PFSLr34FexraQFGiG4BajF8BWosk2d4VOrG5x6iYDF6Iq7CFqpIaPkv8wFi
	c93QKSmdxO+/oKSc4Dqtwj9hUGqfZXItENnds0aSLR8LIfU54vGdiyY8NAvGHSqqiUJLB4MJpLqWx
	hYer/UTg==;
Received: from [213.70.40.217] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t3Fcl-0005eb-V1; Tue, 22 Oct 2024 16:12:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: analog audio on Orange Pi 5
Date: Tue, 22 Oct 2024 16:12:29 +0200
Message-ID: <172960632905.1476617.3550555273579615288.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241008031429.2410-1-honyuenkwun@gmail.com>
References: <20241008031429.2410-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_151243_434006_EA5979FA 
X-CRM114-Status: UNSURE (   7.76  )
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

On Mon, 7 Oct 2024 22:14:29 -0500, Jimmy Hon wrote:
> Analog audio using es8388 codec via the headset jack and onboard mic
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: analog audio on Orange Pi 5
      commit: ae46756faff88f26aca8aba28397a6ab30d229c2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
