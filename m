Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2F11CEB2C6
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 15:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFE1ExTac2fYQm0pUS8JcZtU5JQZIyRVaNFl7Buop9Y=; b=u4nKbM0GMkNR9q
	meXz2H/UunubVvsGi1JNtYTQK5dG/4e7WdqMsdZXCdl4cql4rGXymRYZWog1Fpog4qW6rZywFLSrm
	4FsbdwWUMuml84l7lyFv3s08KCy4eVXBVMqOH6fL9JqX1w7oGJGWt6NTfG5TXkWWMz8/ygj7TOeJ9
	hzM3NVpiOjsEGed1qxbziNpOhP8mgv829FXkvquUZNVUSRogcGt3yv++duU8iNBN3ajs0ADKn8HzE
	Mj7eprWY9pwO9g62zR7Hin44DNm5HytF5m7Lsj6VDkm7CAN2MtG93H31uDcWja3TCYoaZJpwXQDg4
	Pw5Ks7CN1UC5R+W66IXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKHqJ-0000000Ds7b-0twC;
	Sat, 15 Nov 2025 15:05:35 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKHqE-0000000Ds78-43Cq;
	Sat, 15 Nov 2025 15:05:33 +0000
Received: from localhost.localdomain (unknown [116.25.95.231])
	by smtp.qiye.163.com (Hmail) with ESMTP id 29b1c85f7;
	Sat, 15 Nov 2025 23:00:21 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: heiko@sntech.de
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: (subset) [PATCH 1/6] arm64: dts: rockchip: add mmc aliases for 100ASK DshanPi A1
Date: Sat, 15 Nov 2025 23:00:10 +0800
Message-Id: <20251115150010.1052575-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <176307502906.495066.9339764118786240746.b4-ty@sntech.de>
References: <176307502906.495066.9339764118786240746.b4-ty@sntech.de>
MIME-Version: 1.0
X-HM-Tid: 0a9a8808101203a2kunmc099134524c7f0
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGkMZVkIfQx4aHksZSh0YSlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk5VSUhKWVdZFhoPEhUdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQk
	tLWQY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_070531_229374_8ADBB01C 
X-CRM114-Status: UNSURE (   4.92  )
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

> Applied, thanks!

> [4/6] arm64: dts: rockchip: fixes supply for 100ASK DshanPi A1
>       commit: 621bb09a76fa12a9e61c9d745ae524db86abf781

Sorry, I don't know if this is a problem:

The commit message started with an extra ">".

>From the schematic, the supply of ES8388 chip and the vmmc-supply
of SD card both originate from the VCC3V3_S0 regulator, fix it.

https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?id=621bb09a76fa12a9e61c9d745ae524db86abf781

Thanks,
Chukun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
