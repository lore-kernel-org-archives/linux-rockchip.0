Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B498C3DA5D
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jul 2024 15:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TXS3Vcg2LVXvz0lRhqY0QYT5bbzI7kJBC4zjvawYiHg=; b=MoVC4DMclEgAM3
	BG1MuV+XGl1gNMWvUKW94n6ic011gou8CX7gVh8KB2Ei5J2DnRtG1ygygBKkSbq0QPDNc0fsI8HZi
	L8tcjUUxV6TDMXpyfCSHBPKHk4eL+87n2p3nAD8hUuIwmE4TyJK064XC//Z9wU6A9GBAG61x9/OCT
	mmMzd7epNq8xrtVJZvZyvLNbIEznom88WiW0j0iPrYwI+PTLYue5OV0bH2LK75c1g7jgx9o24eY0z
	re8mQYWn0fYt+Sc+W9J3Z/IiSMv1rA+R3jW3yPfIGi3VOt5Mo8CVsQLwozdAXKOyev87LE9v2KG00
	BuHyhVg3bgV+KkFsmTCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVY9n-000000071WQ-2rpv;
	Sun, 21 Jul 2024 15:07:27 +0000
Received: from mout.web.de ([212.227.15.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVY9Q-000000071Tj-0bsi;
	Sun, 21 Jul 2024 15:07:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1721574396; x=1722179196; i=markus.elfring@web.de;
	bh=8e6xngCEuAfhhKLHCqt5i+i2Y9dCoP7b7yRLeyw9pj0=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=srG5umnm3ufPiBmYgOoAd7FiLEfhrND+tDIj90O2mEtyfKwgAv9c2Glc3m3l8GRk
	 yRALk0jJL1+K59/MxDaOdbaxYvwdOc0L0WtQiMkDMtGNKr0wcDeKbTCr/0Jh+G3mJ
	 +mpQk7uDhycp/sSoL0f8E/ghwzlYR/RBIY3fu/YrWqZfK4WyEkutrDKli6f1NT/hN
	 EP1HUo/sW1KW3Amk+lHlOXkYVpYEZLARg5jRfYFvRLOEyRMHGZureHfG7Ly4K1rvV
	 m/dhw9NRqQa9bHcjP8LtbqW4hSq03RQiSKlpzki6PLLnOEXSbAYXbwnJB5bDjRn5/
	 JKEl32160N+e9+qiqA==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.89.95]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1N79NA-1sFFfE1RAi-00tMCf; Sun, 21
 Jul 2024 17:06:36 +0200
Message-ID: <39542eb6-8616-468b-889e-d9e1db5bcac0@web.de>
Date: Sun, 21 Jul 2024 17:06:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dingxian Wen <shawn.wen@rock-chips.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Jose Abreu <Jose.Abreu@synopsys.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Nelson Costa <Nelson.Costa@synopsys.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>
References: <20240719124032.26852-5-shreeya.patel@collabora.com>
Subject: Re: [PATCH v4 4/4] media: platform: synopsys: Add support for hdmi
 input driver
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240719124032.26852-5-shreeya.patel@collabora.com>
X-Provags-ID: V03:K1:Ak//860WhkOvUrec+vnPOWHPxhxWYIyxGq482NZFRI1G3Kaz2J3
 yfLQAIDLAZZoMvfEkQeeZ2UAJh6Ollel5osvUKJXbO8ar7yjmXYqiSwpEIeso5KgG7kUQNS
 rPGOvXpD2m9ughKG6wgKMN5YMJZx+RMT6oil6VyHb/5xrPiIXTtz0wgD/0JVk1tQM5wAZ2R
 WeMLhpihX8cZ5MAI5RJ/g==
UI-OutboundReport: notjunk:1;M01:P0:VxIcW5ieMCU=;AGiTzqtD2DIn/PYq60IPFcVELrj
 8zVMOpmg+5xhcleAN8Kr0lQC9AhE+tDegMYdoVvYY1M+FC7bpOoodcfMffkImWpohzXeSgQTd
 SgL2gxPPEibBmWh7CsHvDidwDIBEXE/imn0/Tglztb5UJxXHDpmsxQLtTRFUIr4MgHIeLW6us
 kMos34qP9WU1pIsa2J1J/uYYyj4mhQK+kmidKCcseYmdf1dSTVr/mHNPiLh1Absvtm7GMJm1m
 fl4/0vidzbzROR3/bCvhQlNgnypg5h3h6tCApE0dFslduErkNbZAXwGe20rmTsoqfYUZidiqY
 YSA0CDYUM6xDDOY6a6uo9g9HxVfSy+Qjn1xT06+veGFQo9NHKk2SHZXVqRfejxeQN7POcWO2I
 FWnMvUOOOQWe0sCAFwxpZIu3Au47E1f7ERkLd2TVpN4IgRoSeISWH3nM9D8E2XLwRqlv1O4En
 yHKpuSwpUV3Ie9KWTqDUNE+Rp8kQnAcCElkiLUmyoeTwz8K4SFmMHBrwB25qghWkT9TYh8fVn
 2YjDYKcfP2CQzusOJ59kdlQ9AHNmjU3ZKPlTeyt6KfD84Lmc+5svdKCuNcEcO6XcogON3L762
 UG2bKp6KqSsilhg+i4J8KOviCA6U6oEaafZr05owVzL0TVnvIsfG5Kx3FS4E9D0JuZ9pcrS50
 NmW0hZjwF540rxeqQIQN0mWYT3aOHXr9a+7gtLmW1xeuQRyr0jExb5WNbjWfr/DnUYJvLQ4Na
 6dglV1kM/ZACC/on2wPq9X07iiKM/vvBcm/dZIrZ+wJplkqDjU0SrXfsK4VLlsmMFiFnr5uGo
 BhHy6kQDu0WHF9JQv6JcfshQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240721_080704_574193_CF8B5062 
X-CRM114-Status: UNSURE (   5.78  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

4oCmCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zeW5vcHN5cy9oZG1pcngvc25wc19o
ZG1pcnguYwo+IEBAIC0wLDAgKzEsMjc2MyBAQArigKYKPiArc3RhdGljIHZvaWQgaGRtaXJ4X3dy
aXRlbChzdHJ1Y3Qgc25wc19oZG1pcnhfZGV2ICpoZG1pcnhfZGV2LCBpbnQgcmVnLCB1MzIgdmFs
KQo+ICt7CuKApgo+ICsJc3Bpbl9sb2NrX2lycXNhdmUoJmhkbWlyeF9kZXYtPnJzdF9sb2NrLCBs
b2NrX2ZsYWdzKTsKPiArCXdyaXRlbCh2YWwsIGhkbWlyeF9kZXYtPnJlZ3MgKyByZWcpOwo+ICsJ
c3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmaGRtaXJ4X2Rldi0+cnN0X2xvY2ssIGxvY2tfZmxhZ3Mp
Owo+ICt9CuKApgoKVW5kZXIgd2hpY2ggY2lyY3Vtc3RhbmNlcyB3b3VsZCB5b3UgYmVjb21lIGlu
dGVyZXN0ZWQgdG8gYXBwbHkgYSBzdGF0ZW1lbnQKbGlrZSDigJxndWFyZChzcGlubG9ja19pcnFz
YXZlKSgmaGRtaXJ4X2Rldi0+cnN0X2xvY2spO+KAnT8KaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5j
b20vbGludXgvdjYuMTAvc291cmNlL2luY2x1ZGUvbGludXgvc3BpbmxvY2suaCNMNTc0CgpSZWdh
cmRzLApNYXJrdXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
