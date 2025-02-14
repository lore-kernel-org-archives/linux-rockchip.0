Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92107C02198
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Feb 2025 19:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cWqAJDb5ET5s1L8a+ydSBH2W/+XUtAcwvBOe01b8P+E=; b=cef
	a5vlcBplLc9jAo0BVzJ2qsRxkhrxpXeUp53rIflmBm5/yTdwtqGONE03nHCZgSJU4uUeswCgC1vJT
	widFMp2eA77+KPSjGDH3PVagE9cqEIwyCQMXbvNyPb4XDBC5hv1Wpog7ky1LWv596K+woPtqxRVyT
	hpz9zr1hH/OFJ0gsWcu+vS/YGFUvjA+o0nQzOWEa1fZp643CfRjdgBi8YtwyrhnWH1ZIpP8MR3oUr
	fCDxuQrtySjT1JTEI7e/Lyd+bmyYAMoKXuqnX/hMpCUwVTsHk00MI2d+LtXZ1zdQfAjUSU4Mn9J8F
	lNs6EKsvfm7sCFUc0YX35lC5i8uONGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tj12P-0000000FyzV-3Gsf;
	Fri, 14 Feb 2025 19:07:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tj0cj-0000000FuT7-1gJz
	for linux-rockchip@bombadil.infradead.org;
	Fri, 14 Feb 2025 18:41:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:To:Subject:Message-ID:
	Date:From:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=m6cf5PVfeCpsAcYvQDR4LO/T0BQBmqx32cHSY4EQyQ4=; b=N0B0dOQ5ZxKUVhjxGsFwx4VOwL
	5ojqylONpUsHEvFfdMyNx+wgMfL7NQ0ufUxbFc77zznApfL4siWkzrBtb09pPb/hRYiIM5uZth7qZ
	y1xIY7PymmrCIvQ4TSs7PTxXGNN4bLLlCfrLx0p/k2LSk8wA1rPCmL9HkSXpzwCz5L9ELlXsAPtA3
	79UFSR+S1V82ze0V91gD3IJUm9ZG/R/RbDhau9nMHQvL1ko3Sp9sFQS2HG7Ae2HqkR8B+t2lB4RF1
	arScVWALuztOyUSdFfeY448dEiadZD/X780pu9fISzaWHqW9aBt9iLu+5cvwJ+JMJWmk9QBj+LsiA
	eKJqtNxw==;
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tj0cf-00000001JcC-3yvj
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Feb 2025 18:41:12 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-220c665ef4cso36182515ad.3
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Feb 2025 10:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739558467; x=1740163267; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=m6cf5PVfeCpsAcYvQDR4LO/T0BQBmqx32cHSY4EQyQ4=;
        b=hF7g3YqAW0sEwMWbWHUbZv6j6sVjCBRQ2PgjTN99mBcX184IK20x5Tlw1xuC1UF/qW
         xxMK6BiRRbsQetR7wVoLaVREVi0xJkUDA2/x20I/k+XqXWUjMrhR8b5jBcq0FRnF017Y
         Y1osWxmyvvEePS9MevwNua6ZtWDdNXeD5tbPNeyNihVp/3CwNLoAgbYJWFxXlVaxXCaj
         dzSWd8Nf/9MKVEoMF1gyiU4+YmbwhA6Oun7BGBzYS1FrKQhhZJENROGshpSuOGw+mv+8
         AjbrHVyqqu9dEUQeooszWcdDmdfLHvbbXcuF3OM5SAnQjrYxkUUYOrKCk7L44UmWaaHQ
         FyLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739558467; x=1740163267;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m6cf5PVfeCpsAcYvQDR4LO/T0BQBmqx32cHSY4EQyQ4=;
        b=JRNblPcKHnsnPKAnPMxmOOFJVhE9dCsxMCPqWHM7KaJHcdbU3/1PMXPPFhI1VXJEHv
         JTh+matjEwsZpWYwa19F75Zo09xnTemW+BhHamqxvXSM2dV1PpogA+8G2u1wbi8ylSGE
         32yeCxsOmDkBeSq+TI78xL78Rr3eSAN7yk1QzRhlQOCOD/tVI4qUt2+P7VST+lCEnP+I
         920CbbwmRRK4EGf9z/4Y3QyY0AKiZAuAYcYoZnpmFwdI3/Xh5KXHtaMWTIeH/E6HeONm
         1grsVfi4uMa2jkgMj1scMDuWCGllVlKqzzXWdADoG0oSg6WRz0DncBoCuERSlZUg2gnM
         TdcA==
X-Gm-Message-State: AOJu0YwZ+SRRpUA48y+t8wP+7SKU0N9BC80qBpZqkKP2sdfc8O7IN9yd
	C5jYus+kxaMl/A+1PGQuJOwt8VdJwzTVa/cb2zrnACxOft22oxzGeJkXwnenpT9J6tYbarSKA94
	FeQMaXKX9LwIdI1YKej6Cq49mlpjflDXt
X-Gm-Gg: ASbGncszuIzrvCuUsJZUnHHO/nh+eVMXcBz8k07ccDbhPaT64R+QHwEyAUChB05ZDv3
	snOGZcqLdgQXcrSp4V/wmzJpSw57ObOZJTqOxAd7Ff+/GidbgIkTfHP+JexbbqkxhQ9ViSuTr
X-Google-Smtp-Source: AGHT+IFPD1/KCMZbS9HCdzF4XslJe0bB50PWlvWJ3XBFfmtUnyvzOD63F74MgSZy4Rs36ET2I9Cv/y6Fp0VwGixCzr8=
X-Received: by 2002:a05:6a00:3c84:b0:730:98ef:30b5 with SMTP id
 d2e1a72fcca58-732617741a4mr718556b3a.5.1739558466878; Fri, 14 Feb 2025
 10:41:06 -0800 (PST)
MIME-Version: 1.0
From: Ramon0000 <ramon00c00@gmail.com>
Date: Fri, 14 Feb 2025 19:40:55 +0100
X-Gm-Features: AWEUYZkdQTHz0_gsSCDfMx7XK1O2im4uxcRGJLn0K_tmpmXXa4pUpGM8SVXfXvw
Message-ID: <CAG-UM5EbD7eJPO7+rRnZsV4mPfeFbtGmz18+23P1ZJgdqpFdAg@mail.gmail.com>
Subject: rockchip-pcie f8000000.pcie: PCIe link training gen1 timeout!
To: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_184110_161294_F1DF161C 
X-CRM114-Status: UNSURE (   3.68  )
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

As originally reported here: https://github.com/openwrt/openwrt/issues/17923

I own a NanoPi R4S - FriendlyELEC WiKi with RK3399 SoC and recently
update to  OpenWRT 24.10.0 (kernel 6.6.73).. However now if I do a
reboot it generates:
[ 0.936433] rockchip-pcie f8000000.pcie: PCIe link training gen1 timeout!
while with the previous 23.05.7 (kernel 5.15.xx) it rebooted fine.
Power cycling clears the error.

Seems like a reboot does not reset the state then subsequently the
training fails.

It does seem a patch is already available:
https://github.com/armbian/build/pull/6057

Can this be included in kernel?

Ty

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
