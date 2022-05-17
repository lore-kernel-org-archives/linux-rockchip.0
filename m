Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7920AC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 19:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wfQSz5NTz8UDT/oe7QKVFvh7bCii2qPogfE5xJ39KkA=; b=WHfZXs0KK0e8nm
	V5Y1megs/XjXq4Tu+y1jEvVBA+kaiLORfwZjdsoX4IGmJNwzjePMc/kLvoJZ6aODInpmOqKUUnDs+
	oRJp+QtXQxXw+D/q9ondhxQKIPgy6F0YcvH6vGxdpwjONMc6xTwT6b9VGkOvB7kvHhLvk8FtrEBRb
	6gmB2266n2iRhpGyX1FO0ZAs5PQ9TyY7lncPIE3md1pXXJTlss5WabX7642hrUEu0MfnAWAfxgQrg
	iKtXg6AsnjLIdu00kwK1F7eOmQgfC8xMP6tgyYvuoy5+w63XLHosSKuA1r1eAzgO1+GzDqxnCotPZ
	C9LlNbm/ARxtv4n3Bumw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr2d3-00FXzM-9y; Tue, 17 May 2022 19:13:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr2bR-00FWjU-LF; Tue, 17 May 2022 19:11:31 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nr2bL-00043L-Pp; Tue, 17 May 2022 21:11:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: zhangqing@rock-chips.com,
	Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 krzk+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, sboyd@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: convert rockchip,
 rk3368-cru.txt to YAML
Date: Tue, 17 May 2022 21:11:18 +0200
Message-Id: <165281458742.3119039.12700615403743089370.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220329180550.31043-1-jbx6244@gmail.com>
References: <20220329180550.31043-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_121129_772158_5635D70D 
X-CRM114-Status: GOOD (  10.32  )
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

On Tue, 29 Mar 2022 20:05:49 +0200, Johan Jonker wrote:
> Convert rockchip,rk3368-cru.txt to YAML.
> 
> Changes against original bindings:
>  - Add clocks and clock-names because the device has to have
>    at least one input clock.

Applied, thanks!

[1/2] dt-bindings: clock: convert rockchip,rk3368-cru.txt to YAML
      commit: 32a214cd8ccbc361319bcd00b0b1b05a6b53bc61
[2/2] arm64: rockchip: add clocks property to cru node rk3368
      commit: 17c0c5b67353b26a46611cffffd80aadd7215cfa

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
