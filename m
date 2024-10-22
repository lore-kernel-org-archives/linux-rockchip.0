Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A40AD2C54B
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J857wIP/JLD9C370T3fFWkabg5MrFJ0XTMAjcIoXlhs=; b=wPc7mlyA0gp6no
	BNQsCNQ/7OSIH9oaegwfHfQPVxEYYF+uENu3fvZuJxvc7gmDhoPe/f/QnclPyWSP5KME2h7UonVYL
	ad9mjJ/tq/yZDWaqpOSl1d5T0ZWYlw9Q8uPRLOB3s87TnbE3X3DJKhc9w3M81A9rAQFy4gVuUlLxm
	JOBrzGoRCzDHepsTzmkejSQ82K01V8FjcfJyZLjTmW97HajGs+Uiku1HJxD9ZVhiXxt7bbNfebitS
	EIUWpXkaXnBdOFx9jP17HWfFjNdiTltKtMWXfaWvOVZZCFqfJ8lu5n8/Z830DhKKJGtGpK06qfzsC
	D6Ye9Q8RKc7IyX6JDoLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Eoa-0000000AvxP-49Zy;
	Tue, 22 Oct 2024 13:20:48 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3EoW-0000000AvwG-1xy9;
	Tue, 22 Oct 2024 13:20:47 +0000
Received: from amadeus-Vostro-3710.lan (unknown [119.122.213.136])
	by smtp.qiye.163.com (Hmail) with ESMTP id b6ef359;
	Tue, 22 Oct 2024 21:20:33 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: seb-dev@mail.de
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	sigmaepsilon92@gmail.com,
	naoki@radxa.com,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: rk3588(CM3588) USB issues
Date: Tue, 22 Oct 2024 21:20:29 +0800
Message-Id: <20241022132029.900166-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <ed50615f-6e4e-481c-aa8c-44ac938be2bf@mail.de>
References: <ed50615f-6e4e-481c-aa8c-44ac938be2bf@mail.de>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZHk9CVkpKGE1IGBkYTEpJT1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSFVKSE1ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0tVSktLVU
	tZBg++
X-HM-Tid: 0a92b462e5ac09c2kunmb6ef359
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mkk6TAw4NTIdFyFWFC8*TAsp
	HxMaCklVSlVKTElCTUtISUhIQ05OVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpIVUpITVlXWQgBWUFOSko3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_062044_776365_0A1E6831 
X-CRM114-Status: UNSURE (   6.14  )
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

Hi,
> Please try Denx u-boot v2024.10-rc2 and maybe Ubuntu or another
> Debian based distro. For u-boot you can use the generic target for the
> Rockchip RK3588 or add the device like you described.

I have the same issue too. This problem occurs in the usb_host2_xhci
node, which is connected to combphy2. The U-boot version is v2024.10.
It seems like other people have this problem too:
https://lore.kernel.org/linux-rockchip/20240615070904.625-1-naoki@radxa.com/

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
