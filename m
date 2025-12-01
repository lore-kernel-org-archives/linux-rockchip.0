Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D3E2D116F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Dec 2025 13:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8yc+tJO85ACFto2P2sUF1SQb3A3m0czdaIGz8YUbTZI=; b=teYc4G1lDQRzW3
	9P3quERrtitjdQ9I68GVMQhV8ySHX8VpF53Dqgei+P7SvYgB8QnJs7IvFRMvg2F0ZTGkc5Jn4M66X
	Sh1bLzpBD5TXS3jgh0NkroFtyJJZQvsfpiinv4YYjxRXjxjG9sLuutLOY5Dp5PXdpqnk0lvrnCDbg
	e89sQVdkE4jkQZPOoV8YpWEKKxZXO0sV5z5yCVY1u5s7X/Q6KuLYiG8MBpGyoNLn1/sJpHHyHX8Xm
	0GlmRG+qQEaDK+XzQVdBZGtTkr3GozeuuPXOvV+Vov9dOW5JvF0XTw0S8hYPdzuTwuiT+09Ac25QR
	zpYhCrDRJM83zg95XCiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ40l-00000003ygP-2ivm;
	Mon, 01 Dec 2025 13:32:15 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ3Wt-00000003cDy-0KjE;
	Mon, 01 Dec 2025 13:01:26 +0000
Received: from localhost.localdomain (unknown [119.122.215.79])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2b8a20103;
	Mon, 1 Dec 2025 21:01:13 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: krzk@kernel.org
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: arm: rockchip: Add HINLINK H28K
Date: Mon,  1 Dec 2025 21:01:06 +0800
Message-Id: <20251201130106.236903-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <f27dc5ef-1c60-4724-8e18-33bbc4230d3e@kernel.org>
References: <f27dc5ef-1c60-4724-8e18-33bbc4230d3e@kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0a9ada00be9203a2kunm2a36c62d3110
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCT00YVk1DTksZQkhKTU5PGVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVMQllXWRYaDxIVHRRZQVlPS0hVSktJQk1LSlVKS0tVS1
	kG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_050123_284425_3366330B 
X-CRM114-Status: UNSURE (   4.35  )
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

> Just squash these two binding patches. Way too much churn.

However, they are different SBCs manufactured by different companies:

HINLINK H28K - Shenzhen HINLINK manufactures
MangoPi M28K - Beijing Widora manufactures

So should I squash them into a patch?

> Anyway, looks like duplicate - two devices with same model name.

These two SBCs are indeed very similar, both in name and configuration.
So I put them in one series. Perhaps splitting them into two series to
avoid confusion would have been better?

> You have entire commit msg to explain that.

Thanks,
Chukun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
