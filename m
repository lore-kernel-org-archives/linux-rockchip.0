Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E2F5CD68F6
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 07:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ykJbS7WyYW10iqbzJzjDdDC76a3t+rI7zB1a0ylZOMk=; b=TBGWtfyDUB/8tk
	QKEs6L6M5fHd7eNQZWhabbHyHuWQV2NjKBvNlrY/zbtmVbGvxudhEgfgG9ZJgsuDG6yISctZZrGw2
	tI61SPeB0skRaJkMFtIIK04mUX7OkWZL9uuhRw7LYQH6tn4iWtm5VBlqywkpvrvkciD3P/nh7A6gj
	eeAGaHQhFpGaDeHRdLOkeT3n6zGuUKckLvkahYttP5JnywoxvyV2oaZGHHD3Rx4u+bNj1BfGOWzKQ
	3Q5PTL2hTmsy2r2Cv/NNMXAV5/kmzYWkQ0MDV8wNfeqRKZYYfaeklnG38XzpXkhY5c5m7I2oEOVbV
	nxHvZkQqnIYKjFRCNMlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qq7Ty-00Cjrm-2u;
	Tue, 10 Oct 2023 07:48:46 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qq7Tu-00CjpJ-1r;
	Tue, 10 Oct 2023 07:48:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696924120; bh=+7mC7cUIagzQs5/FRvWIKxyEtjBtUsiIq3o/E4sh/wU=;
	h=From:To:Cc:Subject:Date:From;
	b=Fzbx+hnuTGin5uAH+inRSiTNthq1wJymTDF+r0v5A7/kBgnbD9kEPgc4URwPCHalK
	 r9xLIdjeFAH3Yim5DzyYURKrjIOPkIDuEeSw+3VeAw99JPmEj6TmsboVeWStlnHlyT
	 2geAXMsxCO+75S7hYkH6rcAbph8me7Ktm0cZ1emU=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] Add support for poweroff via RK806 PMIC
Date: Tue, 10 Oct 2023 09:48:19 +0200
Message-ID: <20231010074826.1791942-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_004843_067935_72F55D93 
X-CRM114-Status: UNSURE (   8.74  )
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

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CgpUaGUgUE1JQyBzdXBwb3J0cyBwb3dl
cmluZyBvZmYgYnkgdHdpZGRsaW5nIHNvbWUgYml0cyBpbiBhIHJlZ2lzdGVyLiBBZGQgc3VwcG9y
dApmb3IgaXQgdmlhIHByZS1leGlzdGluZyByb2NrY2hpcCxzeXN0ZW0tcG93ZXItY29udHJvbGxl
ciBEVCBwcm9wZXJ0eS4KClRoZSBzZXJpZXMgd2FzIHRlc3RlZCBhZ2FpbnN0IExpbnV4IDYuNi1y
YzQuCgpQbGVhc2UgdGFrZSBhIGxvb2suCgpUaGFuayB5b3UsCglPbmTFmWVqIEppcm1hbgoKdjI6
Ci0gYWRkIGEgbWlzc2luZyBkcml2ZXIgcGF0Y2gKCk9uZHJlaiBKaXJtYW4gKDIpOgogIGR0LWJp
bmRpbmdzOiBtZmQ6IHJrODA2OiBBbGxvdyByb2NrY2hpcCxzeXN0ZW0tcG93ZXItY29udHJvbGxl
cgogICAgcHJvcGVydHkKICBtZmQ6IHJrOHh4OiBBZGQgc3VwcG9ydCBmb3IgUks4MDYgcG93ZXIg
b2ZmCgogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgw
Ni55YW1sIHwgNSArKysrKwogZHJpdmVycy9tZmQvcms4eHgtY29yZS5jICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgNCArKysrCiAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9u
cygrKQoKLS0gCjIuNDIuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
