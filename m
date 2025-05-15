Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6827C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 May 2025 13:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eV4lAoNhQuq8Na/pMfdim7+x8/MbuRK4V/ase9n1OEM=; b=H0v28NmM+wO4X6
	VBhRv842n5FuELyURxkcT+EGR5LGxOmop+Qh1/xwcnXdh8upZoxWDQevDwH77ndzd1ZT7MG4103Aa
	2kbyPNOL0wr6r+kX3o+2OYa2DSi/1pv6GnL6rXVmfEt1giuTN7mVOBrOU+73uh25jshrOJ71wf81v
	P1OzFp43SU4sFgWeJIglhxfPbh2JQWMk9egDgv4sZwGr0UuDFJc9Fftw5NQ/d6QM1pWgZvV04tAkd
	4ZLGTtguNc2vQXYK8Z66kS6a4o3JvXw8SS+HBnswE0YmgJexB8LaGKzmHnW125nRAdIN1ghqRJgN6
	M58ExyPyfqAJcTd8qM5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFYNW-00000000gel-2Fg1;
	Thu, 15 May 2025 13:12:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFYCe-00000000f5w-3ru0;
	Thu, 15 May 2025 13:00:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=j3sH6idRVT/DTznLTmJ3CWldluNb4n55qNSbRTmuPbw=; b=k0slbEMxZpoCLTyT3w91VY5ST8
	NqULa0lfbpb18LrpnwQD3SRyRIDLO5t+0IbT6qNV5dOX0qoGUo+qSbVZQPU7Pyxa4vSmFLLwX7GKV
	4odizJqzefzcex46WcFy4SxVz89UZnwSRTajJQc1LYmTxWZW0XaTnOZJl24hIkH/lLh2X+gm2cZSq
	fPpocHx6QCBh7z1ZCvfeOJZ+9HuRaBVz4OUe2phgh6ucu+HMO8ys65ZcK7zpZ5xhwENzjyuU8ose+
	NCK7dWM5UcbiJl7MCzLzApi389XJ4mfTJPX8R3NPQANvCBbTQFOQ2OGjWH8o10VTtEpbYQD6b6bKa
	2ybO5tLQ==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uFYC8-00051K-F3; Thu, 15 May 2025 15:00:16 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chaoyi Chen <kernel@airkyi.com>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 Dragan Simic <dsimic@manjaro.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] dt-bindings: display: rockchip: Convert
 cdn-dp-rockchip.txt to yaml
Date: Thu, 15 May 2025 15:00:15 +0200
Message-ID: <2745929.KRxA6XjA2N@diego>
In-Reply-To: <20250513011904.102-3-kernel@airkyi.com>
References: <20250513011904.102-1-kernel@airkyi.com>
 <20250513011904.102-3-kernel@airkyi.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_060048_955640_39E91122 
X-CRM114-Status: GOOD (  11.48  )
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

SGksCgpBbSBEaWVuc3RhZywgMTMuIE1haSAyMDI1LCAwMzoxOTowNCBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIENoYW95aSBDaGVuOgo+IEZyb206IENoYW95aSBDaGVuIDxj
aGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPiArICBwb3J0czoKPiArICAgICRyZWY6IC9zY2hl
bWFzL2dyYXBoLnlhbWwjL3Byb3BlcnRpZXMvcG9ydHMKPiArCj4gKyAgICBwcm9wZXJ0aWVzOgo+
ICsgICAgICBwb3J0QDA6Cj4gKyAgICAgICAgJHJlZjogL3NjaGVtYXMvZ3JhcGgueWFtbCMvcHJv
cGVydGllcy9wb3J0Cj4gKyAgICAgICAgZGVzY3JpcHRpb246IElucHV0IG9mIHRoZSBDRE4gRFAK
PiArICAgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgICAgZW5kcG9pbnRAMDoKPiArICAgICAg
ICAgICAgZGVzY3JpcHRpb246IENvbm5lY3Rpb24gdG8gdGhlIFZPUEIKPiArICAgICAgICAgIGVu
ZHBvaW50QDE6Cj4gKyAgICAgICAgICAgIGRlc2NyaXB0aW9uOiBDb25uZWN0aW9uIHRvIHRoZSBW
T1BMCj4gKyAgICAgIHBvcnRAMToKPiArICAgICAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1s
Iy9wcm9wZXJ0aWVzL3BvcnQKPiArICAgICAgICBkZXNjcmlwdGlvbjogT3V0cHV0IG9mIHRoZSBD
RE4gRFAKPiArCj4gKyAgICByZXF1aXJlZDoKPiArICAgICAgLSBwb3J0QDAKPiArICAgICAgLSBw
b3J0QDEKCnlvdSdyZSBhZGRpbmcgdGhlIDJuZCBwb3J0IChwb3J0QDEpIGFzIG91dHB1dCBwb3J0
LCB3aGljaCBoYXMgbm90IGJlZW4KcGFydCBvZiB0aGUgb2xkIGJpbmRpbmcuIEkgdGhpbmsgdGhp
cyB3YXJyYW50cyBhbiBleHBsYW5hdGlvbiBpbiB0aGUKY29tbWl0IG1lc3NhZ2Ugb24gd2hhdCBp
dCBpcyBtZWFudCB0byBjb250YWluLgoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
