Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F81606A333
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 10:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=atWpN0QY;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=A7MKf6u5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WMaP8YIpUXsUhgODW1rzIf3rZoxfMH3HVYDp/H/XyFg=; b=atWpN0QYN57Uvf7nMN1kObVxUq
	BIbfWpXzTFb89hrrDlKV+pmFpZnZk3JYmIhPq5QMrySrFtq67gAZaXh6yir3jJuWrSNze0IcGzLOz
	TWcTH7+FLTquMc2lIBmu6SvP0mrJNdcGnWXZu6BcgjCu4mHf7Hnedww2vnyTS+nTczBjHn/GLtQ+3
	QCjrEHhZWxOB3e2hrhEOby1qhNzKr+0/b7d4J6difkB2Zr08fxQjUhxUNbEvrI4mwdKM1gcbWo3PY
	gQFOkIAvHcduxGAcU6Ep1aAsqULzz1J3AGmuP5+F7gvB6n+vnskLzAUeSu98rgQTjXJYdxKh/Sc3k
	gRfxwKWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTd6f-00000008b1F-2gre;
	Wed, 18 Nov 2026 10:41:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTd6Y-00000008awT-06nd;
	Wed, 18 Nov 2026 10:41:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 291A2620F4;
	Wed, 18 Nov 2026 10:41:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4AF91F000C4;
	Wed, 18 Nov 2026 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794998488;
	bh=wtOLIIGy2V2qdHSm0s3wSDnD9BTWQqmLjRaYH3bZpf0=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=A7MKf6u5BHKVv1R+Sujt5r3gCGRPLDpsQh5UyGBQWLTwhrw3HU8TlJiyxwPrUE3mN
	 Huj5qK6DeLVXVLYA4MUu6uJHwaTzAeA+CEXzTZNAu2UhXHdjFUHRIgu8HQrEvGmcEH
	 OBlCpLIIxDmCKpsZGWhV9kZD+3YGtisvctqk2/zqx21lL5Kl7XEBE/EiCYfFE5Mf3W
	 Mv+wRB9fNsgyp1QBEKvscVcTygexfmL0BQqXcGhxQh+OVks8SezcqxTi9vLPCsALop
	 2e37kfKZM7MZLokOefBdu8+tkkdC8OQtDqVyUQGZrbtO7vjktfCYKz3qvR+lrXdGLa
	 f3FGIt0Qr74/Q==
Subject: Re: [PATCH net-next v3 2/2] net: stmmac: dwmac-rk: Add RK3572 support
From: netdev-bot+sashiko@kernel.org
To: 1579567540@qq.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@kernel.org,
 kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, david.wu@rock-chips.com,
 alexandre.torgue@foss.st.com, peppe.cavallaro@st.com, joabreu@synopsys.com,
 maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
Date: Wed, 18 Nov 2026 10:41:27 +0000
Message-ID: <179499848737.3136.8604402338812509621@kernel.org>
In-Reply-To: <20261116-add-board-ok3572-c-net-v3-2-a957fdcd9c7a@qq.com>
References: <20261116-add-board-ok3572-c-net-v3-2-a957fdcd9c7a@qq.com>
X-sashiko-severity: Medium
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUocykgdG8gY29uc2lkZXIuCgpDcml0aWNhbDogMCDCtyBIaWdoOiAw
IMK3IE1lZGl1bTogMSDCtyBMb3c6IDAKCklmIHlvdSBiZWxpZXZlIG5vbmUgb2YgdGhlIGlzc3Vl
cyBhcmUgbGVnaXRpbWF0ZSwgcGxlYXNlIHJlcGx5IHRvIGVhY2gKaXNzdWUgb2YgTWVkaXVtIHNl
dmVyaXR5IG9yIGhpZ2hlciBhbmQgZXhwbGFpbiB3aHkgdGhlIEFJIGlzIHdyb25nLgpJZiBhbnkg
b2YgdGhlbSBhcmUgbGVnaXRpbWF0ZSBhbmQgeW91IHBsYW4gdG8gcmVzcGluLCBwbGVhc2UgbGV0
IHBhdGNod29yawprbm93IGJ5IGluY2x1ZGluZyAicHctYm90OiBjciIgYXMgYSBzZXBhcmF0ZSBs
aW5lIGF0IHRoZSBlbmQgb2YgeW91ciByZXBseQoob25lIHN1Y2ggcmVwbHkgcGVyIHNlcmllcyBp
cyBlbm91Z2gpLgoKLSBbTWVkaXVtXSBSSzM1NzIgUkdNSUkgZGVsYXkgbGluZXMgZ2V0IGZpeGVk
IHZhbHVlcyB0aGF0IHRoZSBEVCBpcyBub3QKICBhbGxvd2VkIHRvIGRlc2NyaWJlLgoKLS0KCm5l
dDogc3RtbWFjOiBkd21hYy1yazogQWRkIFJLMzU3MiBzdXBwb3J0CgpUaGlzIHBhdGNoIGFkZHMg
UkszNTcyIHN1cHBvcnQgdG8gdGhlIFJvY2tjaGlwIGR3bWFjIGdsdWUgZHJpdmVyLiBJdApjb3Zl
cnMgdGhlIHJlZ2lzdGVyIGxheW91dCBmb3IgdGhlIHR3byBHTUFDIGNvbnRyb2xsZXJzIGluIHRo
ZSBQSFAgYW5kCk5WTTAgR1JGcywgcGx1cyBhIHNldF90b19yZ21paSBjYWxsYmFjayB0aGF0IHBy
b2dyYW1zIHRoZSBSR01JSSBkZWxheQpsaW5lcyB0aHJvdWdoIHRoZSBJT0MuCgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay5jIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYwo+IGluZGV4IGEzN2Rm
NTc2N2Q4NGUuLmM5ZDhkOGJmNTFmN2IgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmMKClsgLi4uIF0KCj4gK3N0YXRpYyB2b2lkIHJrMzU3
Ml9zZXRfdG9fcmdtaWkoc3RydWN0IHJrX3ByaXZfZGF0YSAqYnNwX3ByaXYsCj4gKwkJCQlpbnQg
dHhfZGVsYXksIGludCByeF9kZWxheSkKPiArewo+ICsJdTMyIHZhbCA9IEdSRl9GSUVMRCgxNCwg
OCwgcnhfZGVsYXkpIHwgR1JGX0ZJRUxEKDYsIDAsIHR4X2RlbGF5KSB8Cj4gKwkJICBHUkZfRklF
TEQoMTUsIDE1LCAhIXJ4X2RlbGF5KSB8IEdSRl9GSUVMRCg3LCA3LCAhIXR4X2RlbGF5KTsKPiAr
Cj4gKwlpZiAoYnNwX3ByaXYtPmlkID09IDEpIHsKPiArCQlyZWdtYXBfd3JpdGUoYnNwX3ByaXYt
PnBocF9ncmYsIFJLMzU3Ml9WQ0NJTzBfM19WT19JT0NfQ09OMSwgdmFsKTsKPiArCQlyZWdtYXBf
d3JpdGUoYnNwX3ByaXYtPnBocF9ncmYsIFJLMzU3Ml9WQ0NJTzVfNl9JT0NfTUlTQzAsIHZhbCk7
Cj4gKwl9IGVsc2Ugewo+ICsJCXJlZ21hcF93cml0ZShic3BfcHJpdi0+cGhwX2dyZiwgUkszNTcy
X1ZDQ0lPMV8yXzRfVklfSU9DX0NPTjEsIHZhbCk7Cj4gKwl9Cj4gK30KCltTZXZlcml0eTogTWVk
aXVtXQpXaGVyZSBhcmUgdGhlIHR4X2RlbGF5IGFuZCByeF9kZWxheSB2YWx1ZXMgZm9yIFJLMzU3
MiBtZWFudCB0byBjb21lIGZyb20/CgpUaGUgY29tcGFuaW9uIGJpbmRpbmcgY2hhbmdlIGluIHJv
Y2tjaGlwLWR3bWFjLnlhbWwgZm9yYmlkcyB0aGUgbGVnYWN5CnByb3BlcnRpZXMgZm9yIHRoaXMg
Y29tcGF0aWJsZToKCiAgLSBpZjoKICAgICAgcHJvcGVydGllczoKICAgICAgICBjb21wYXRpYmxl
OgogICAgICAgICAgY29udGFpbnM6CiAgICAgICAgICAgIGNvbnN0OiByb2NrY2hpcCxyazM1NzIt
Z21hYwogICAgdGhlbjoKICAgICAgcHJvcGVydGllczoKICAgICAgICByeF9kZWxheTogZmFsc2UK
ICAgICAgICB0eF9kZWxheTogZmFsc2UKClRoYXQgbWVhbnMgYSBzY2hlbWEtdmFsaWQgUkszNTcy
IG5vZGUgbmV2ZXIgaGFzIHRoZW0uIHJrX2dtYWNfc2V0dXAoKSB0aGVuCmZhbGxzIGJhY2sgdG8g
dGhlIG9sZCBkZWZhdWx0cyBhbmQgbG9ncyBhbiBlcnJvciBvbiBldmVyeSBwcm9iZToKCmRyaXZl
cnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmM6cmtfZ21hY19zZXR1cCgp
IHsKICAgIC4uLgoJcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF91MzIoZGV2LT5vZl9ub2RlLCAidHhf
ZGVsYXkiLCAmdmFsdWUpOwoJaWYgKHJldCkgewoJCWJzcF9wcml2LT50eF9kZWxheSA9IDB4MzA7
CgkJZGV2X2VycihkZXYsICJDYW4gbm90IHJlYWQgcHJvcGVydHk6IHR4X2RlbGF5LiIpOwogICAg
Li4uCglyZXQgPSBvZl9wcm9wZXJ0eV9yZWFkX3UzMihkZXYtPm9mX25vZGUsICJyeF9kZWxheSIs
ICZ2YWx1ZSk7CglpZiAocmV0KSB7CgkJYnNwX3ByaXYtPnJ4X2RlbGF5ID0gMHgxMDsKCQlkZXZf
ZXJyKGRldiwgIkNhbiBub3QgcmVhZCBwcm9wZXJ0eTogcnhfZGVsYXkuIik7CiAgICAuLi4KfQoK
cmtfZ21hY19wb3dlcnVwKCkgcGFzc2VzIHRoZXNlIGRlZmF1bHRzIG9uIGZvciAicmdtaWkiIChi
b3RoIGRlbGF5cyksCiJyZ21paS1yeGlkIiAodHhfZGVsYXkpIGFuZCAicmdtaWktdHhpZCIgKHJ4
X2RlbGF5KS4gU2luY2UgYml0cyAxNSBhbmQgNwphcmUgc2V0IGZyb20gISFyeF9kZWxheSBhbmQg
ISF0eF9kZWxheSwgcmszNTcyX3NldF90b19yZ21paSgpIHN3aXRjaGVzIG9uCnRoZSBJT0MgZGVs
YXkgbGluZXMgd2l0aCAweDMwLzB4MTAgdGFwcyBmb3IgZXZlcnkgUkdNSUkgbW9kZSBleGNlcHQK
InJnbWlpLWlkIi4KClRoZSAweDMwLzB4MTAgZGVmYXVsdHMgY29tZSBmcm9tIG9sZGVyIFJvY2tj
aGlwIFNvQ3MuIERvIHRoZXkgbWF0Y2ggdGhlClJLMzU3MiB0YXAgc2l6ZT8KCkEgYm9hcmQgY2Fu
J3Qgb3ZlcnJpZGUgdGhlbSB3aXRob3V0IGZhaWxpbmcgc2NoZW1hIHZhbGlkYXRpb24uIFRoZSBk
cml2ZXIKYWxzbyBkb2Vzbid0IHJlYWQgcngtaW50ZXJuYWwtZGVsYXktcHMgb3IgdHgtaW50ZXJu
YWwtZGVsYXktcHMuCgpDb25zaWRlciBhIGJvYXJkIHRoYXQgdXNlcyAicmdtaWkiIHdpdGggUENC
IGRlbGF5cywgb3IgYSBQSFkgdGhhdCBhZGRzIGl0cwpvd24gZGVsYXkuIENvdWxkIHRoaXMgbGVh
dmUgdGhlIFJYL1RYIHNhbXBsaW5nIHNrZXdlZCwgd2l0aCBubyBzdXBwb3J0ZWQKd2F5IHRvIGZp
eCBpdCBpbiBEVD8KCldvdWxkIGl0IG1ha2Ugc2Vuc2UgdG8gZWl0aGVyIHplcm8gdGhlIE1BQy1z
aWRlIGRlbGF5cyBmb3IgUkszNTcyIHdoZW4gdGhlCmxlZ2FjeSBwcm9wZXJ0aWVzIGFyZSBhYnNl
bnQsIG9yIHRha2UgdGhlbSBmcm9tIHRoZSBzdGFuZGFyZAoqLWludGVybmFsLWRlbGF5LXBzIHBy
b3BlcnRpZXM/IElmIG5vdCwgc2hvdWxkIHRoZSBiaW5kaW5nIGtlZXAgYWxsb3dpbmcKdHhfZGVs
YXkvcnhfZGVsYXkgZm9yIG5vdz8KCj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHJrX2dtYWNf
b3BzIHJrMzU3Ml9vcHMgPSB7Cj4gKwkuaW5pdCA9IHJrMzU3Ml9pbml0LAo+ICsJLnNldF90b19y
Z21paSA9IHJrMzU3Ml9zZXRfdG9fcmdtaWksCgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZp
ZXcgwrcgaHR0cHM6Ly9uZXRkZXYtYWkuYm90cy5saW51eC5kZXYvc2FzaGlrby8jL3BhdGNoc2V0
LzIwMjYxMTE2LWFkZC1ib2FyZC1vazM1NzItYy1uZXQtdjMtMC1hOTU3ZmRjZDljN2ElNDBxcS5j
b20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
