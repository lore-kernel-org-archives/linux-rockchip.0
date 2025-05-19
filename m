Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F216AC3ABD8
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 01:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TxnfLDnCi+Azljo8zSdMy1mxx1ph+CHHBKuxcFRJzhg=; b=v6SLHF+WVypT3p
	rgjeGR4xZseecWo7DlqyOlElt60mbzf2kqBPMrLVGi5oSnZmSGrbA4/jLYz85Uqwu4LeRnEF5PUJq
	lrV2AUa2PlEP+uoCBsIY3Qh+YNYJwEdoLbHCDKDPm4teeylaRf+K+Ei2HFpPX5Fft+9cNHf9SfLMn
	ABayLO7Ln3oieDl+9+Q5xnlAhvpjh+JsD/DHnvVVHJ3TAd69fExcZvmVWY5iKac7BJj+XLKI2KW0i
	OPD4wBEs+D3vgedyUIr1mpY9wAPJ1tHWesUxGKfIx8zC75xDtCKVWmGlpvi+ihsqMCUrAA8TGVXS/
	jn88JY3TmhVBL1XkGUAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGpKc-00000007mMZ-0H2q;
	Mon, 19 May 2025 01:30:18 +0000
Received: from smtpbg151.qq.com ([18.169.211.239])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGpIU-00000007m9C-1ozt;
	Mon, 19 May 2025 01:28:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1747618024;
	bh=HICLe6kVYfHxQosMAWfBiGfk8HLTkoJiRdDPSs0zKGM=;
	h=From:To:Subject:Date:Message-Id;
	b=sTxILT+dqEbdHTEDkxfQ4gAHtg10L7ev9Vd/SyAQ3bq+0YEqJM3qgA7lVrlzy7TaN
	 WsPSVYSXePXoXRF2SA8dIFwMrr8uv3pzHMjC5sRHgIcgDvsIZi9W9A2i4TBfhae9aw
	 cx1FMlUz3kMBuvzY8yZUw8FjntdUY9/hJaV9wRls=
X-QQ-mid: zesmtpgz7t1747618022ta4b8f366
X-QQ-Originating-IP: 7G1uptdJJorXsZPmkObXhl/zsV7bqPGJiWN1BLGTKso=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 19 May 2025 09:27:00 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 6823201925033719388
From: Chaoyi Chen <kernel@airkyi.com>
To: Sandy Huang <hjc@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] Convert Rockchip CDN DP binding to yaml
Date: Mon, 19 May 2025 09:26:30 +0800
Message-Id: <20250519012632.94-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: Mutteg8H72qD0e3+xNdYv7CPv9n3fer6jIlYOhSBxwS1Qb5035U63Bo/
	ChGME7AodpRWzJIwmr3+jO9bGVKQS+OrfFMPczEqQ6w6hJVsuNUe9pHrlgsJG75KgfQlwxT
	Xq6C6iC4AZm/wZ6j10KgedSTY/8R/BOy783WubRqSygWJnEXHly3+8hErm+GMdY/ORhN+sJ
	bcyYylgyCzi/ZyI8dj5ysHqGp8rZQK331Lmn0evKAtF02F1iht7cVgiCHeIQQLRnbO/4tf4
	QerPhb4G9NyXHbvnmv9PyIVjJacw8a5FgrkU4+/OSNJdgkAYzCsboZxlkE+EHRO9HbDjX8V
	xsWqID5Zaw/kbhzBL7diMy7WsK0lnmJGcZTifx4JwlLfndhgM4zxos3yVcCMH13JA3OGeid
	cqjp53GKw4AS5DCDrlwHpepNKwZwqHotjELhZh+XlCKCxKAF/cZjNgankS5RC+43qRoIDnp
	NmSyLa5EfngwpacW03UUdvbgjAyDuYJAIyHaWvs45Fpy8rqEHCGOOU2zLbXSC2jquBUatjJ
	/CjF+MbLLyijwioJB8NTecc/mNJ9oyO9+0S8N7x/UoPWXcrAH6f+keuaiUhrzSqUowDECsW
	3LubinxmUPl92ZYgM7zNTVsIfrjT16vr/jTfszswJZyhjFSSQZax6sljt8+9jWENLW2y4uq
	TIoHSkH8ASywe5t6JrQM8O762hp/TjpIPE/Uafl+2wjulvVKOntxLovtTyUmYNewm37t1cd
	EQbk7/ikBLT79mUC5kClsnjydzwvOVkfFnng5MvYCpLDfvXC5NJwXTxHEvE1/WiQBbkAuvR
	zVCT3wNHccw9JWNEaJD51ox3v2N3cHzUXsV84NibiADupxzstvZTLJExj304Q/6LYzj1mTp
	vbvkh/EW5wO6LF6pBYqRRlljbMZorQXJobWhNCtStXL6LYLWlJ59KpvrLCKdgLr/kS+KZFi
	ll5JzuyhOGxcV/L041anxZzZ5n9G2LfnZQzyoHH3i+YtmKQ==
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_182806_982068_0B2EFB04 
X-CRM114-Status: GOOD (  10.59  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

This series convert cdn-dp-rockchip.txt to yaml.

PATCH 1 try to improve coding style on the existing rk3399 cdn-dp
node.
PATCH 2 try to convert cdn-dp-rockchip.txt to yaml.

Both of them add new port@1 node that represents the CDN DP output to
keep the same style as the other display interfaces.

Changes in v4:
- Link to V3: https://lore.kernel.org/all/20250513011904.102-1-kernel@airkyi.com/
- Add commit about port@1 node

Changes in v3:
- Link to V2: https://lore.kernel.org/all/20250509070247.868-1-kernel@airkyi.com/
- Add more description about phy/extcon
- Fix some coding style

Changes in v2:
- Link to V1: https://lore.kernel.org/all/20250508064304.670-1-kernel@airkyi.com/
- Rename binding file name to match compatible
- Add more description about grf/phy/extcon
- Fix coding style

Chaoyi Chen (2):
  arm64: dts: rockchip: Improve coding style for rk3399 cdn_dp
  dt-bindings: display: rockchip: Convert cdn-dp-rockchip.txt to yaml

 .../display/rockchip/cdn-dp-rockchip.txt      |  74 --------
 .../rockchip/rockchip,rk3399-cdn-dp.yaml      | 165 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-base.dtsi |  10 +-
 3 files changed, 174 insertions(+), 75 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/rockchip/cdn-dp-rockchip.txt
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,rk3399-cdn-dp.yaml

--
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
