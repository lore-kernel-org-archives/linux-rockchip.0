Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5B22CDB465
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 20:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YfWlVjUgzMY6AD6i71EJ+JNpq+pJmqbD1xK7Fu6/oSI=; b=4q4lc9V1aUsuGY
	m1VRQAZ2P0YmP2zB26sAtmcT0fMSEDmNY1ZBQtLqmIEm8sTAk+e3hJrY7GB/7LSCJ8v9sjteag938
	6b60AC9R031KhEEU9h/fMY/uyexSQNkFWHR/ZWBqx9EBLPCvA7DX+6Ky+E2Ik0HSHvfhP6cugApen
	5yQ/qZIzBxmYuxakq8XoM3lODh3wmqpUaZ3k3aiGojCGtf6ftL6w6DUNYZ0HzI4LXQo8nVI+yDLTD
	BhH5XeVdq3uV9Dk4FMUB1al2hVW7ZfiA+yD+emOtUZzaZFxEyKky0xqYLnqHr0vJ9akfPe31ci6I7
	ZFFtmgHiKiBCCKtDHVrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsTx4-00AT1D-1v;
	Mon, 16 Oct 2023 20:12:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsTwz-00ASuG-1r;
	Mon, 16 Oct 2023 20:12:32 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsTwv-0000QB-2g; Mon, 16 Oct 2023 22:12:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v1 1/1] arm64: dts: rockchip: add status LED to rock-5b
Date: Mon, 16 Oct 2023 22:12:19 +0200
Message-Id: <169748713691.982818.17117317398371965214.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231005134037.33231-1-sebastian.reichel@collabora.com>
References: <20231005134037.33231-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_131229_628636_1AF8914C 
X-CRM114-Status: UNSURE (   8.30  )
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

On Thu, 5 Oct 2023 15:40:37 +0200, Sebastian Reichel wrote:
> Describe the Rock 5B status LED in its device tree.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: add status LED to rock-5b
      commit: 7952cbbda301f7d297c6ac761f9dfafb90205358

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
