Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 829C0C5516F
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 04:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Cc:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DBKq+CX0FR42B6Q5IcW2r+dhQ2UO+fD0WmCZwPKJQuM=; b=VS1sdRQ28/npwF
	KEAMt3+fys0mCtptIuXe0twdLyb3LwuTg0zolf2uXg9S4GHcnz2zawx5dMpbLTSlt8VNZawopmO5u
	yHW9rdDdJjN+va0XizptkAgphoUfX8x0pY8ceQ4OF2zRzlOG1aYggqryLsGi6dTKRk4uNUalqJRyd
	Ko9vVEcB/bgoZoL7s0+in4w5FHPxEcP9Jy2NUtJCVx12i6587YmVbuYzKqt7r0CNfqiR7rFMEBgv5
	Efkeja/xiMH+6FdvosdMBbJZudgnXdEyeqBbzvMHttGyV5iHC9BF/U/u45Oq6VZ1EGta9MkVkEfo4
	WlUSWRjNcetlDw76Y2BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wq1gM-0000000Dtcj-1oxq;
	Sat, 01 Aug 2026 04:50:46 +0000
Received: from out203-205-221-221.mail.qq.com ([203.205.221.221])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wq1gJ-0000000DtcG-1xIF;
	Sat, 01 Aug 2026 04:50:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1785559833; bh=+G1Afgfgm4VomeHyuZtbW2kKbV8N7tbkp7LK+TL/0q0=;
	h=From:To:Cc:Subject:Date;
	b=VLDdCeQWVNy70A7P4y5sWt3bGgpQR9GBKWgGBsg8vn3X3/2yUlkaInUK4bMsnZTvP
	 eR4qxgqDG/tS+JNUZ2gkNGr3CPu6asvPx9N8b62R5e3V4BQ02QIITWTL0fOQIUY2MR
	 xTGZRctN7bnhLW0W9hpaeJ0mBvbcCF+lxcmgOfhI=
Received: from AERO17.taila7786d.ts.net ([112.43.117.189])
	by newxmesmtplogicsvrszc43-0.qq.com (NewEsmtp) with SMTP
	id C9E2EA5C; Sat, 01 Aug 2026 12:50:30 +0800
X-QQ-mid: xmsmtpt1785559830tqo0hg88f
Message-ID: <tencent_4141B315242524F71B028860294CB1315E08@qq.com>
X-QQ-XMAILINFO: NT7uTz3cNku2VA5qCdx/+vljb5DbZnndH2i5LtgxlE30kG+zEmdKivg1PTXAy8
	 JKQgc11w1/7Z2dhUVYCIfsnsZNBpvCFRq9v2VurKgW2qIDYY+odxFv9TW9qY7almkKgpkhP2b9sa
	 BeGOIcRqd1TEVNqZQhr6EytbcyfyO2l+Z/SFFq/jy9QSDHsX5K9KVbItCwrJzz73Jy9NnXSL5kKr
	 WDxmZzHC254RppXLNDqFt1l+FpqRcm/uqymxLY4qq1FULEkoSAaHK5O20ZdLB3DzWvNnH0mZ6Ob4
	 yud3iCg6VK5f7gn0IOEj4heeYISYCdnPWn7wwtMMECNhseQN3/KBLeirtyt6WBz/vOzna98vrDjp
	 2z45ed2Gi5lZ9r/8LTtvcHLXa9pAtCV9h6jZEgIKiR0iuyXgGByQt6MWOuq+zoSlK3q8k4Z0JkZZ
	 ZNULeHkEaYFnGS2OTaa0WOpG3Gg+9yNwMerOFK77bjx5T9tuCQeIOYm4It6pQII2H9Owl6ves7HS
	 IJUy26c+FrTR1boQvCnNk9ObAPOZ1pLu1tLukdGyvRZrYvYj0mOfZVghm1lo4/g9TJT1KVUYUJp0
	 vOs1YSz9Fo5evod6GDUrccrRoKGY/WRbWRSrzTjQh57tL6pkNgPAfOY5Ina/DZF08YDB9vkPYTNw
	 VK5a8o/t0PEaQtH9CEpT4kdVbzNv4/mw7zKbd8zJPSBk/PYu+eB2UcO5iTehqZbcEkl5jE/XROwA
	 aKHGy2DwsFkoV9oK8EmNM5T0nUCWRhXunTq74Zu7t324veLL9R18tsvlA3/eRzUH9r04f3vMK3G7
	 VvXdiC9uM15ZNpKEn1oDvtNfkO+Sd4Sin1AcCnDg2pC0dTBUiq5GE74Kjk6TpptMENuEcOa+7c31
	 HAkYGrYVxOmB7S7Pw6P5mlVMPdKEaXCrT1L7z8ioJqBOGLNw/J30ORiQfmGTDkkZ/XsRI0dgmR6W
	 lLG9siP3hH4hNjeptr5FILpCykcW7Z4UxCIamYo8QtaVgREvGxb1G/Kgj2BmmojevZUZ2z+Jrdj+
	 tviK1psbq+awt87VaUULamWEcEb3JzP+HsTv+lAJBqM2IrrbxN+wfEd+nOwdE=
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
From: Pufan Jin <2254650260@qq.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: rockchip: Fix fan speed control on LubanCat 4
Date: Sat,  1 Aug 2026 12:50:22 +0800
X-OQ-MSGID: <20260801045025.67512-1-2254650260@qq.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260731_215043_848002_A23A19AF 
X-CRM114-Status: GOOD (  10.13  )
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

VGhlIEVtYmVkRmlyZSBMdWJhbkNhdCA0IGRyaXZlcyBhIDItd2lyZSBmYW4gYnkgY2hvcHBpbmcg
aXRzIDVWIHN1cHBseQp0aHJvdWdoIGEgTU9TRkVUIHdpdGggcHdtMC4gVHdvIHByb2JsZW1zIHBy
ZXZlbnQgdGhlIHRoZXJtYWwgZnJhbWV3b3JrCmZyb20gY29udHJvbGxpbmcgdGhlIGZhbiBzcGVl
ZDoKCjEpIFRoZSBQV00gcGVyaW9kIG9mIDUwMDAgbnMgKDIwMCBrSHopIGlzIGZhciB0b28gZmFz
dCBmb3IgdGhlIGZhbidzCiAgIGludGVybmFsIGJ1bGsgY2FwYWNpdGFuY2UgdG8gZGlzY2hhcmdl
IGR1cmluZyB0aGUgb2ZmLXRpbWUsIHNvIHRoZQogICBmYW4gc2VlcyBlZmZlY3RpdmVseSBjb250
aW51b3VzIDVWIGFuZCBydW5zIGF0IGZ1bGwgc3BlZWQgZm9yIGFueQogICBub24temVybyBkdXR5
IGN5Y2xlLgoKMikgTm8gY29vbGluZyBtYXBzIGJpbmQgdGhlIGZhbiB0byBhIHRoZXJtYWwgem9u
ZSwgc28gdGhlIHB3bS1mYW4KICAgZHJpdmVyIGZhbGxzIGJhY2sgdG8gdGhlIGhpZ2hlc3QgY29v
bGluZyBsZXZlbCBhdCBwcm9iZSB0aW1lLgoKUGF0Y2ggMSBmaXhlcyB0aGUgcGVyaW9kOiBtZWFz
dXJlbWVudHMgb24gaGFyZHdhcmUgc2hvdyB0aGF0IDEwIG1zCigxMDAgSHopIGlzIHRoZSBsb3dl
c3QgZnJlcXVlbmN5IHRoYXQgZ2l2ZXMgcHJvcG9ydGlvbmFsIGNvbnRyb2wKd2l0aG91dCBhdWRp
YmxlIGNvaWwgd2hpbmUuICBBdCB0aGlzIHBlcmlvZCB0aGUgcm90b3IgaW5lcnRpYSBhdmVyYWdl
cwp0aGUgc3dpdGNoZWQgc3VwcGx5IGludG8gc21vb3RoIHNwZWVkIHJlZ3VsYXRpb24uCgpQYXRj
aCAyIGFkZHMgZm91ciBhY3RpdmUgdHJpcHMgYXQgdGhlIHZlbmRvciBrZXJuZWwncyBvcmlnaW5h
bAp0ZW1wZXJhdHVyZSB0aHJlc2hvbGRzICg0Mi81NS82MC82NSDCsEMpIGFuZCBiaW5kcyB0aGVt
IHRvIHRoZSBmYW4ncwpjb29saW5nIGxldmVscy4KClRlc3RlZCBvbiByZXYgMjAyNDEwMjYgaGFy
ZHdhcmU6CiAgLSBpZGxlIDM2IMKwQyDihpIgY3VyX3N0YXRlPTAsIGZhbiBzdG9wcGVkIChQV00g
ZGlzYWJsZWQpCiAgLSBzdHJlc3MtbmcgLS1jcHUgOCDihpIgdGVtcCByZWFjaGVzIDQ4IMKwQyB3
aXRoaW4gc2Vjb25kcywKICAgIGN1cl9zdGF0ZSBqdW1wcyB0byAxLCBQV00gZHV0eSA9IDM5MjE1
NjkvMTAwMDAwMDAgbnMgKDM5JSksCiAgICBmYW4gYXVkaWJseSBzbG93ZXIgdGhhbiB0aGUgcHJl
dmlvdXMgY29uc3RhbnQgZnVsbCBzcGVlZAogIC0gYWxsIGZvdXIgY29vbGluZyBsZXZlbHMgZGlz
dGluZ3Vpc2hhYmxlIGJ5IGVhciB3aGVuIGRyaXZlbgogICAgbWFudWFsbHkgdGhyb3VnaCB0aGUg
c3lzZnMgaW50ZXJmYWNlCgpCYXNlZCBvbiBIZWlrbydzIHJvY2tjaGlwIHRyZWUgKHY3LjMtYXJt
c29jL2R0czY0KSwgb24gdG9wIG9mIGNvbW1pdAo2ZDk0MzBkNTg3MTQgKCJhcm02NDogZHRzOiBy
b2NrY2hpcDogQWRkIEVtYmVkRmlyZSBMdWJhbkNhdCA0IGJvYXJkIikuCgpQdWZhbiBKaW4gKDIp
OgogIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBGaXggZmFuIFBXTSBwZXJpb2Qgb24gTHViYW5DYXQg
NAogIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgZmFuIGNvb2xpbmcgbWFwcyBmb3IgTHViYW5D
YXQgNAoKIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLWx1YmFuY2F0LTQuZHRzICB8IDU1
ICsrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCgotLSAKMi41NS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
