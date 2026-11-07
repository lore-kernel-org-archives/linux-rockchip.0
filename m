Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F3D606A331
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2026 17:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zkPMURpj;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=BHAhYTR1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gK8t0pGNoRJ87SpX43GaNgdoFEjtSv9mbjvkgrYyjAw=; b=zkPMURpjuEwzJsFZuZrfPsedCY
	+GG5vB4b4r1/QS/DFBWtKR5oSMKCSWjqqgpgqI9CFqrfef5y66IwXhDGb6B4K+XrgpR+WsuKgnSBc
	23PEou2qMvjVo8C90WdT4U9goSkBrcQXjnG4xsx3wu4MN+pveLC8vmkofOcaAL0xqofz+9RUlfHVt
	IDXjO2mobeHm0EZVXPkhVoUkfT7aPua6sRW2UDBXa6w5TNWZhbE51ZP/+6vWgaHu+aIvjABexmmCW
	XYmdlq/i1/qI4jbWdP81oW8YM3KRxDcmLcfX+2HK5Be3vzn0yYkXZdTRoiQsZfRMQB12qO3eJAF0u
	gfNL225A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPjrY-0000000F4hG-3R3V;
	Sat, 07 Nov 2026 17:05:56 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPjrX-0000000F4gm-1d7p;
	Sat, 07 Nov 2026 17:05:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 266CF4376A;
	Sat,  7 Nov 2026 17:05:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8AC21F008BC;
	Sat,  7 Nov 2026 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794071155;
	bh=FNKUE9KN5gqUNftHqErKO4XRPnmFTGx1efebnCS4O7w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=BHAhYTR17CvWOCfIwPyzFwTvS4Xhyt2C7Cyt48wzNl4x++bt5Y/f54VkWLcidgVr8
	 V0i2qp2vOufmVhMtRaHkoH/sgowjTTLQsIjo7KOCwDOkk+GJSVd8OMueFNYuX3h+ra
	 9eBGFiXJgnUH6E3JunuVa3x5aoeo5vUEsImDF0K5ZHfyUVYUxyiiHLU6pF9vTz73Lf
	 LFt5/5Odk6GEQY5NVOK5H07sidjGPyXIHh+y0OroHZWYyrG//o9H6jtCauYds7dm5+
	 JHY9k8tsru965IG8JjeCkfk18/bCSHHT8tBlppx07+Pu0zH9UifgvX4QWHaE9O830e
	 cGf8na2IgzFTw==
From: Manivannan Sadhasivam <mani@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 "Yury Norov (NVIDIA)" <yury.norov@gmail.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Alexey Charkov <alchark@flipper.net>, linux-pci@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com
In-Reply-To: <20261105-rockchip-pcie-system-suspend-v9-0-a2e55846649e@collabora.com>
References: <20261105-rockchip-pcie-system-suspend-v9-0-a2e55846649e@collabora.com>
Subject: Re: [PATCH v9 0/9] PCI: dw-rockchip: add system suspend support
Message-Id: <179407115382.87267.12160393716568806842.b4-ty@b4>
Date: Sat, 07 Nov 2026 22:35:53 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.16.0
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Ck9uIFRodSwgMDUgTm92IDIwMjYgMTQ6MzM6MDggKzAxMDAsIFNlYmFzdGlhbiBSZWljaGVsIHdy
b3RlOgo+IEkndmUgYmVlbiB3b3JraW5nIG9uIGZpeGluZyB1cCBhdCBsZWFzdCBiYXNpYyBzeXN0
ZW0gc3VzcGVuZCBzdXBwb3J0IG9uCj4gdGhlIFJvY2tjaGlwIFJLMzU3NiBwbGF0Zm9ybS4gVGhp
cyBzZXJpZXMgaXMgYSBmb2xsb3ctdXAgZm9yIFNoYXduIExpbidzCj4gc2VyaWVzIHdpdGggZmVl
ZGJhY2sgZnJvbSBOaWtsYXMgQ2Fzc2VsIGFuZCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gYmVpbmcK
PiBoYW5kbGVkIGFzIHdlbGwgYXMgc29tZSBvZiBteSBvd24gY2hhbmdlcyBmaXhpbmcgdXAgdGhp
bmdzIEkgbm90aWNlZC4KPiAKPiBUZXN0ZWQgYm9hcmRzOgo+ICAqIFNpZ2U1IChSSzM1NzYpCj4g
ICogUm9jayA0RCAoUkszNTc2KQo+ICAqIFJLMzU4OCBFVkIxIChSSzM1ODgpCj4gICogT0RST0lE
LU0xIChSSzM1NjgpLCBJZ29yIFZlbGtvdiAocHJldmlvdXMgdmVyc2lvbikKPiAKPiBbLi4uXQoK
QXBwbGllZCwgdGhhbmtzIQoKWzEvOV0gUENJOiBkdy1yb2NrY2hpcDogRml4IExUU1NNIHNldCBm
dW5jdGlvbnMKICAgICAgY29tbWl0OiA0NmQxYjRmNzczYjNhOGQ2NDBjNGNiNDRjY2MyZGFmNjAw
NDNiNzM3ClsyLzldIFBDSTogZHctcm9ja2NoaXA6IFJlc3RvcmUgdnBjaWUzdjMgcmVndWxhdG9y
IGhhbmRsZQogICAgICBjb21taXQ6IDZjNTdhZGJiYWU3MTVmOTE0NTVjMjcwZTM5N2NmOGE2MDRl
Mjc1ODUKWzMvOV0gUENJOiBkdy1yb2NrY2hpcDogTW92ZSBkZXZtX3BoeV9nZXQgb3V0IG9mIHBo
eV9pbml0CiAgICAgIGNvbW1pdDogMTMzNWM4NWZkZDNhZTJiZjExOGJmMzQ1ZTQ1NmY0ZjQ3MmVh
MGRjMApbNC85XSBQQ0k6IGR3LXJvY2tjaGlwOiBBZGQgaGVscGVyIGZ1bmN0aW9uIGZvciBlbmhh
bmNlZCBMVFNTTSBjb250cm9sIG1vZGUKICAgICAgY29tbWl0OiBmMjY2ZjFiMjRhYWY2M2QzMzk5
NWFlODFjNTRkOTAzMzkxZjQxNmI1Cls1LzldIFBDSTogZHctcm9ja2NoaXA6IEFkZCBoZWxwZXIg
ZnVuY3Rpb24gZm9yIGNvbnRyb2xsZXIgbW9kZQogICAgICBjb21taXQ6IDMwMWQ5MDViODFjMTY0
MDlhNjQ0YTliZGFkMzdjZWNlMDNkNWVlOWQKWzYvOV0gUENJOiBkdy1yb2NrY2hpcDogQWRkIGhl
bHBlciBmdW5jdGlvbiBmb3IgRExMIGludGVycnVwdHMKICAgICAgY29tbWl0OiA3YzdmZGNiNmJi
MjhkMzc3ZmJhNWJlNjdkOTY3MjM4NDA4MWMwY2U0Cls3LzldIFBDSTogZHctcm9ja2NoaXA6IEFk
ZCBwbWVfdHVybl9vZmYgc3VwcG9ydAogICAgICBjb21taXQ6IDdiZDM5ZTU2YjIxMzI5ZDk5ZTU5
YjdlYjdkZmY3NjBjMjI4MGQxYmYKWzgvOV0gUENJOiBkdy1yb2NrY2hpcDogU2V0IGJyb2tlbiBM
MVNTIHJlc3VtZSBmbGFnCiAgICAgIGNvbW1pdDogMzkzNjVlNTlmZmNlYmJkZjkxMDkzNTg3NWE1
NWFmOWJlZTgzMjU3ZgpbOS85XSBQQ0k6IGR3LXJvY2tjaGlwOiBBZGQgc3lzdGVtIFBNIHN1cHBv
cnQKICAgICAgY29tbWl0OiBlZmIyYzAwZTNjNDc4OTVhZWNlZTYyNGQwMzk0NzM1MzQ3NjRhNmY4
CgpCZXN0IHJlZ2FyZHMsCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
