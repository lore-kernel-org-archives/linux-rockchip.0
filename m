Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 717E1C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 22:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y59iEzYlLxnN86AFWXZmBqlkn5HtKPSgCN2wG01DBcA=; b=x8xBqIexctApGe
	xjM2AtznfmzvTmG5eUlgNfKkvl5Osp/r50zQslLQluatmgddbu7GAQswxLcqzuK9xwsBTg8XlDD13
	XFuu0EVCvv6En992WuIz9wcAUUjnULVBsQmRDZtHMVQvmmUVZqSxYxqgUlzDcwETtnxcESZIhbXHC
	qKUYZ22iy5LS6AgF6gU8LFLwI1HdBZUAdmkNxYbsPGX1KItdy8CkIzm8BJTwieqQRtVaHJoTzLo5Z
	W5oFILcepYIaSx+UTLqwDfVAtyvZz/rCG9MIb77Wb5x2daar6nnk2CRDAfpYfPwil9NpBL+HLe4hH
	H1F6+mNmbY3lyD16LiXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r716n-009tfL-0o;
	Sat, 25 Nov 2023 22:26:41 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r716i-009tcY-2I;
	Sat, 25 Nov 2023 22:26:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id EDB0DB80304;
	Sat, 25 Nov 2023 22:26:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A21D5C433C7;
	Sat, 25 Nov 2023 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700951193;
	bh=nGxouixpaTuPhm6jrnt5duw0krFVttjIxICP8jZPoDA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ejB0k2OqRKoBt2orU3H+Po0EK/t4+uKcaCkLYHVXfRRJVGzDxwGQns5A7U4IvUP3M
	 Njm1lvFVcM1GbiysGBEB8ljGtQDIFjncFXwZcvZk4mseL3CPyjfsG7V9GbcOgVqJBF
	 nGC2/abebEW3tipozFviM87h7G8R+1tYigmUwHNQ7eKvZ912Gs0avzcZan39icpzjo
	 rPxUiBmHzbazg8eZJb3Vq0W1civdLsEcp+M86z2iBt0WrpQlrMKGYXqX9dpCxGZEZ8
	 DU6qOFjmrG9JK3jICZ8ZbzcOAgs5CFms9khedmT5PJF/6THBrGFTrqanEBb5wSbmV+
	 8JRaXhY+GXUZA==
Message-ID: <7db8ed22-6677-4e30-909d-0a5be1633fd6@kernel.org>
Date: Sat, 25 Nov 2023 23:26:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] docs: dt-bindings: add DTS Coding Style document
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Cc: Andrew Davis <afd@ti.com>, Andrew Lunn <andrew@lunn.ch>,
 Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>,
 Chen-Yu Tsai <wens@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Heiko Stuebner <heiko@sntech.de>, Jonathan Corbet <corbet@lwn.net>,
 Michal Simek <michal.simek@amd.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>,
 Olof Johansson <olof@lixom.net>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <zajec5@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, workflows@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20231125184422.12315-1-krzysztof.kozlowski@linaro.org>
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20231125184422.12315-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_142636_906924_5CCC0428 
X-CRM114-Status: UNSURE (   8.19  )
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

T24gMjUuMTEuMjAyMyAxOTo0NCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBEb2N1bWVu
dCBwcmVmZXJyZWQgY29kaW5nIHN0eWxlIGZvciBEZXZpY2V0cmVlIHNvdXJjZXMgKERUUyBhbmQg
RFRTSSksCj4gdG8gYnJpbmcgY29uc2lzdGVuY3kgYW1vbmcgYWxsIChzdWIpYXJjaGl0ZWN0dXJl
cyBhbmQgZWFzZSBpbiByZXZpZXdzLgo+IAo+IENjOiBBbmRyZXcgRGF2aXMgPGFmZEB0aS5jb20+
Cj4gY2M6IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4KPiBDYzogQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KPiBD
YzogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPiBDYzogQmpvcm4gQW5kZXJzc29uIDxh
bmRlcnNzb25Aa2VybmVsLm9yZz4KPiBDYzogQ2hlbi1ZdSBUc2FpIDx3ZW5zQGtlcm5lbC5vcmc+
Cj4gQ2M6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4KPiBD
YzogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPiBDYzogSGVp
a28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiBDYzogSm9uYXRoYW4gQ29yYmV0IDxjb3Ji
ZXRAbHduLm5ldD4KPiBDYzogS29ucmFkIER5YmNpbyA8a29ucmFkLmR5YmNpb0BsaW5hcm8ub3Jn
Pgo+IENjOiBNYXR0aGlhcyBCcnVnZ2VyIDxtYXR0aGlhcy5iZ2dAZ21haWwuY29tPgo+IENjOiBN
aWNoYWwgU2ltZWsgPG1pY2hhbC5zaW1la0BhbWQuY29tPgo+IENjOiBOZWlsIEFybXN0cm9uZyA8
bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4KPiBDYzogTmlzaGFudGggTWVub24gPG5tQHRpLmNv
bT4KPiBDYzogT2xvZiBKb2hhbnNzb24gPG9sb2ZAbGl4b20ubmV0Pgo+IENjOiBSYWZhxYIgTWnF
gmVja2kgPHphamVjNUBnbWFpbC5jb20+Cj4gQWNrZWQtYnk6IE5laWwgQXJtc3Ryb25nIDxuZWls
LmFybXN0cm9uZ0BsaW5hcm8ub3JnPgo+IEFja2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29A
c250ZWNoLmRlPgo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRv
Zi5rb3psb3dza2lAbGluYXJvLm9yZz4KPiAKPiAtLS0KVGhlcmUncyBzdGlsbCBhIGNvdXBsZSBv
ZiBjb21tZW50cyBiZWluZyByZXNvbHZlZCwgYnV0IGV2ZW4gYXMtaXMsIEkKYWdyZWUgd2l0aCB0
aGUgY29udGVudHMgYW5kIHdhbnQgdG8gdGhhbmsgeW91IGZvciBkb2luZyB0aGlzLgoKQWNrZWQt
Ynk6IEtvbnJhZCBEeWJjaW8gPGtvbnJhZHliY2lvQGtlcm5lbC5vcmc+CgpLb25yYWQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
