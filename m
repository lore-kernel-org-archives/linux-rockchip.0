Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC2B6C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 09:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/VyfcSQWbVBzlFQBhQkabjTNI1ofdveLRYzHHmTuC0=; b=45GXRnqsQTY74n
	20ZyNhbGagjWbiUQLxp5kJjRGY6lny0Ol86gs7JlcHXXxcJupTlw35X0nq47THIrkkkkuIeueNU8K
	LaaKLcPJFolV6W3ezVk6GwPYiER2CjKJm/kx95kwgFsZPverf5yZHi5wG7fuhbQzgMKb0m4BNsDaV
	KbhEsy3rFbkNs9Yzz/a8tctNfZR0ToIyAgcQZVf9USBl8lD4y9Pr2Qr0sAbb6/c5itKB+yR+XcJ/5
	Rx0/pAPwk2yYCK13WIpAofIfWNN+f+svQN2cRuM9oPLRRvCX1GsIAKIVe4BrH3qlHtbMg2ZN+fSvb
	Rhax0ufhYIBUWBlda6xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbIae-00E0eu-0Y; Mon, 04 Apr 2022 09:01:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbIaK-00E0PP-LZ; Mon, 04 Apr 2022 09:01:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=g7XH8SebslabhEHGcvgtkCEtE1j9cs8yE+tlo/rZDWw=; b=c6GWf9RHYfyoz7iAWm2P4KTgaV
 QKkxg9dYDWvWD9VdBt05wwCza28tQ6LRDi5cxgymefGgbEvlwEhD3xD1PMCG2kZfWClrmYJE5pDpO
 1Wk01e80IaqCb2WnFXkIYRJsp1oLaRWxjSkN35o34cDkUTMuKIE9w1l6SZRatPP89ch5je6ZV3zfp
 GuLI6tpbV8ctwEeSGw0gw2Agbwl+5cv1iLRSSE1j67tuhdXTI2522pREPiINyIHe/XifVHR7i4wf5
 5g3e26dW1kFReUWhb/1Uqs8JDy5TvkqdqUw7e/vjfsi3aU69rCIlVoz7A85IRGK3I3xW2bjOmtBMP
 rGU5UMJw==;
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbIZM-001UG1-Dh; Mon, 04 Apr 2022 09:01:14 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nbIZB-0008Ew-WA; Mon, 04 Apr 2022 11:00:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Peter Geis <pgwipeout@gmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Levin Du <djw@t-chip.com.cn>,
 Liang Chen <cl@rock-chips.com>, Alex Bee <knaerzche@gmail.com>,
 Chen-Yu Tsai <wenst@chromium.org>
Subject: Re: [PATCH v2 0/3] (partial) arm64: dts: rockchip: add basic dts for
 the radxa rock3 model a
Date: Mon,  4 Apr 2022 11:00:00 +0200
Message-Id: <164906273050.1398682.18343164633060967077.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220310210352.451136-1-michael.riesch@wolfvision.net>
References: <20220310210352.451136-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_100016_767151_558BC376 
X-CRM114-Status: GOOD (  11.95  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, 10 Mar 2022 22:03:49 +0100, Michael Riesch wrote:
> This series introduces basic support for the Radxa ROCK3 Model A
> featuring the Rockchip RK3568 SoC. The basic support includes Ethernet,
> USB2 and the headphone connector.
> 
> Patch 3 adds support for the Video Output Processor (VOP) 2 and the
> HDMI output. It requires the VOP2/HDMI TX patches (which are discussed
> on the list) and can be considered as RFC.
> 
> [...]

(partial) Applied, thanks!

[1/3] dt-bindings: arm: rockchip: add radxa rock3 model a
      commit: 65a31b5abb7f4c373ce0de52eca75348156c87d2
[2/3] arm64: dts: rockchip: add basic dts for the radxa rock3 model a
      commit: 056ef970c434a572f81eae199846bf3f521a8303

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
