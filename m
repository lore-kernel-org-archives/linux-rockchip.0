Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BBF7C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 May 2025 02:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REA15kpGdvQi91k2MyhTWbQz+wBl+TDNKWC7AMHf0Jw=; b=tcmxv4UIo7vmKs
	tFgmrA2CvHj7IqIu8uwTyPHLqjs2Kq0mpT7Sv6KpHJQozD6hLMGiu9sVQ952dKQjObF+gYVefcoa7
	+iexVXmptnAdIuYvWuw7RGUAVA9PMS46RqFfsbLIpXkuHP3wA1+8r+076maR2XNuiX1ONiv4l5YS1
	0DgUbNdXif2W+LA0mkdRb54frOS3wcN28WuA9QeE2s36+4Ssqlg/jtuM7hBj/rIHKxMwvwdDJFkAX
	uzTjSWsSwSnYEwAbIDXRWBLUo4e+Avke1BDrf8fXc4ACE6RihVZ5+HOe3WuXyNF/Gmyj4RuWQ02BD
	slHD0b4anZ4j7bYkINzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHCTq-0000000BJ80-0HxU;
	Tue, 20 May 2025 02:13:22 +0000
Received: from smtpbg154.qq.com ([15.184.224.54])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHCTl-0000000BJ7U-0gXK
	for linux-rockchip@lists.infradead.org;
	Tue, 20 May 2025 02:13:20 +0000
X-QQ-mid: esmtpsz18t1747707182t69fba9fc
X-QQ-Originating-IP: Tj2H4w98AHYOiKRZQDY42vO/hTjCivU3dF71q/M76rE=
Received: from localhost.localdomain ( [182.242.225.107])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 20 May 2025 10:13:00 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2848661057266188030
EX-QQ-RecipientCnt: 16
From: Hsun Lai <i@chainsx.cn>
To: i@chainsx.cn
Subject: Re: [v3,1/3] dt-bindings: vendor-prefixes: Add SakuraPi prefix
Date: Tue, 20 May 2025 10:12:59 +0800
Message-Id: <20250520021259.2387130-1-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250519075432.2239713-2-i@chainsx.cn>
References: <20250519075432.2239713-2-i@chainsx.cn>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: MOfwHzgDpc8I5fY+DmIic6ycCX1NWBonn7/S+c798mJ77z4W6sTCjeLt
	VhIMG/g+zv8DRXaml8swU1MNsQIRRqFy5X71qzgdwdEZqRSwgW5ZZkdae179YQrFIo7rVaR
	1xbFF17Pf0mWSKYfUuToc8eC2DgBhKgifNJIFC5KwcCj8WgascWHNtROzRFbM+8xVLbeGD9
	v8FUev9k3LpwiapoOqRG3uxbRp7hHlbZFYpEF6z/MVDfvxeip2TelVCfCktzk3uM2kDYl9Z
	OwTe9N0+k2YtxQv+e29xhN7PqLsMv7pFxBwILZ9SISx0a/aa6J7VlpFt8ZrWVWe4bVa/xt2
	1HZzfLUg7Xde6qyAlFL7lr8uDbNGCULDVhEqqeNAjzUoXpswzPgdqvFu3ovsSZZLxdoATIK
	M8WxrucpOsj92q/EBbhYjaugQKAdE+wntsZJriRj6r+nuTBBpe2zlMRgGZnIY1hd9slWDKk
	lqObW0G13hqjoAmZJJDCJwUAtSCue1UF/dwrnILBEb2YvLH3o2xi5bSxFkYbBb6WQhZbVIp
	ZDTH9XuTEKNVTV2AIUzFoXcI6Il0xpc7YXXZOezqb2rPt5gbeH1dZ41KJP0JciOjnQFuCt+
	Ncv3ztmAenLPo64ihZrbm8nOxUuEmI+lRKK4VUGDh3X/H9uvjldNB6hEwVJmW5XCUK4UTFz
	GWZMfQ7X9Zqb/7u5nnNPBtxMk+yRbJdthQRzBdWQnDqSt52wmCxbRHX3lU4CtSw5F4eamN9
	IQwRzsbPMjXYpGXDnfXdubHbjKfW1/sj8LLAUpIGIe3jFmI7aYBlZYFAogN6NHi41D72/Ap
	6Af+HE//5eU/3bLgR0o8t4Ozs/tMVVt/6ZTn96KZNMCLKt/Fa3x3wM3NjrdoXB48PeNb8JX
	dj/NcrLKmHDrCaeHtBxQ9667r3n+xbebVoRzseJlylErvwQQWXtRq23bY3uAPz1fW5LK7n6
	2PjlW17KCr9pnop8fChG5D72cmIDbbtbo76oZBEeOb2zgdl2ztZRvhqVc
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_191317_933093_C4201E70 
X-CRM114-Status: UNSURE (   7.01  )
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
Cc: robh@kernel.org, andrew@lunn.ch, conor+dt@kernel.org, inindev@gmail.com, heiko@sntech.de, jonas@kwiboo.se, quentin.schulz@cherry.de, krzysztof.kozlowski@linaro.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, sfr@canb.auug.org.au, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 5/19/25 10:20 AM, Quentin Schulz wrote:
> Would you know what the actual differences are? For the Station M2 they 
> say "Based on ROC-RK3566-PC" which may indicate there are some 
> additional things or changes? Same for the Station P2: "Based on 
> ROC-RK3568-PC".

Station M3 is a product from Firefly. This product usually comes with an
outer case, and the internal board used is the ROC-RK3588S-PC development
board, which is why this situation occurs. The same applies to the
Station M2 (ROC-RK3566-PC) and Station P2 (ROC-RK3568-PC).

Thank you for your review!
Hsun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
