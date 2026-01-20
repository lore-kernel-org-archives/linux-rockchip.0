Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CA29D2ECF7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nURwXwAvG0ygaWwuEXTROz4EBxqhevO1ZwEX6wFPcQ=; b=xQ6Kyxst9XC+YU
	+PH+w44u1YiThFRGIc7WLmg/C3CmERHqXjhHh+nfvTS5KjFcJ8j3ZENxfQOW3FNVPlhV7jphLnPmB
	V+xtDq48DKCUN4RTKWUsL9IdSGIhqeiRSGaDqKeISq+YV8BvXJ6DSEaEI/XFywBtr+BMT0FcJmR+L
	VOmP339AdjfpjjkulqQizt7p/avydKX1Lq0KRkAKMn/X4Kg7K9cgdBYDZNxoapC4iaRXwqY3ISN0f
	emW8n3kcuuXvC6w89xX6zrHZQ4eOsNrukTkcQhKGN92tZfCwdCf4ugWjmHGybQj3tCKkYjgoRzILE
	t3JmGeG/j3nEKs5qtRTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8oy-00000003bpS-1y96;
	Tue, 20 Jan 2026 10:18:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8ou-00000003bo8-3WEW
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jan 2026 10:18:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ADVKS6qARuLQqspgyQSl1SCmeeYdkuiNNwIVmocQcrw=; b=j4SndC9fdWLH0WE9/XwlxWHDg1
	u+D+GdXaLixMtIuKWnt7P40XG1y9d8odzhXeRWRj6OH+kbRLHk6jHzT5kFRNJ2SUHK8oK23evypj4
	KvBUfVDiPgXg4DIPW18MSXwcAqfeNG9ebIJRXA6hp50V+NOKy5HTDV0oIT4Jjsn+pBps2W/04Y74X
	fHHatb6pKKJqw+Rggw6RnAd8hdDM3NbPVAY/GVhWBEhzvbw5huFBbBhTHtjIYsDOWIkyuRYgTB6o1
	Hci1f3BXlA/jvTnr5cZ8hooqVqfFsvmwOvhOemEDwqO/04JrbiGu0bGWKd2B3MqQJV0mgoIqUmZxF
	fm0SMQCQ==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vi8or-003MG3-DM; Tue, 20 Jan 2026 11:18:42 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	jagan@edgeble.ai,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	aweinzerl13@yahoo.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH 0/6] Add Anbernic RG-DS
Date: Tue, 20 Jan 2026 11:18:38 +0100
Message-ID: <176890429960.373062.3240608231791332011.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260113195721.151205-1-macroalpha82@gmail.com>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_021844_872820_962FE423 
X-CRM114-Status: UNSURE (   8.46  )
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


On Tue, 13 Jan 2026 13:57:15 -0600, Chris Morgan wrote:
> Add support for the Anbernic RG-DS. The Anbernic RG-DS is a dual-screen
> handheld from Anbernic powered by the Rockchip RK3568 SoC. It has
> dual DSI displays with touchscreens, multiple face buttons, and is in
> a foldable clamshell form-factor.
> 
> https://anbernic.com/products/rgds
> 
> [...]

Applied, thanks!

[1/6] drm: panel: jd9365da: Use gpiod_set_value_cansleep()
      commit: 388df23fda2db75abe988015a1dd681a43fcdf94
[2/6] dt-bindings: display: panel: Add compatible for Anbernic RG-DS
      commit: b83a3a48edd26da7db2414797c7a428ba8b5c5e5
[3/6] drm/panel: jd9365da: Support for Anbernic RG-DS Panel
      commit: ce76a267341cb306016beedb24a205e892613716

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
