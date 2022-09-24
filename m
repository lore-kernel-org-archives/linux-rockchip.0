Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CD8AC07E9D
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Sep 2022 15:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UrcqNrYz0slewcgI4zW4jSd+ATl7J+QukaUCujH9YUA=; b=AFpBZa4kqpVbVV
	khfcjWABl9rZVdNie3/QQoaEP/9vmgELdGVuftwvdcgnZuP2B/FKmazK65KjaPu3hsddAwr8m8Eh/
	+W0tC58dc/TVl9jRo5JuJsDNUNheNJToshD84t3kIW8d6vvuV4lkgQFqSWNFsxWk6NQ3Qc17mT40y
	eMV9HIwOmql7pMQ2nV4g9itUMrKyjzC9xCF3DX3Y0W6Xgnz+xuoHV8gUXLT3A9NaUcje7jYmLvd5p
	/RY3vwFRRdiAQgKE0n2NFl+PK9Kn1thmwWD/tdPLBdn34QueRBcsMgcnEvfZbsSxif9Dw/Nv7expH
	5OYRYF0Twtj8EfcA9DWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7Jt-007k2T-TR; Sat, 24 Sep 2022 15:43:57 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7I5-007j3f-BN; Sat, 24 Sep 2022 15:42:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C3EA660BBF;
	Sat, 24 Sep 2022 15:42:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F704C433C1;
	Sat, 24 Sep 2022 15:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664034124;
	bh=Pi3r7RFfjB1ZQR5A8zioZunFpZkeCIpGkMpxi2ewfEg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=W+B41+v+ty1jbD3yqbduGtFu4AmDdLMCl2FJln+jZApcqGWouuGdnRQyP+baBZlAg
	 19TeyXFd7wsvQKZpZDPHNcPm0tlmIcNwT8CHsQDF08TiJ+rGe5IfLPVMuW0cuP9HPF
	 TkWi0+1vaZdoCDnKQy67mCBBncYgIXo2ynWiyttqDIshysJxfvC6cNxNLQA3MyM0at
	 oZpfezkiR6IIBYtkvBCr7M56Kn2xtFhIKRbTRwHAEDZZLBSZlQGrpGjQ7NAv7c3fYj
	 nUyLtBYKSrtF1J33Omeraw8WzsJ3I7dsEDQvA5kkZs1zJ4IZY1MOy+Uu6GADk/5FqO
	 oy7lqqpAe71vg==
Date: Sat, 24 Sep 2022 16:42:06 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>
Cc: <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-amlogic@lists.infradead.org>,
 <linux-imx@nxp.com>, <linux-iio@vger.kernel.org>, Chunyan Zhang
 <zhang.lyra@gmail.com>, Michael Hennerich <Michael.Hennerich@analog.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, Cixi Geng <cixi.geng1@unisoc.com>, Kevin Hilman
 <khilman@baylibre.com>, Vladimir Zapolskiy <vz@mleia.com>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Alexandru Ardelean
 <aardelean@deviqon.com>, "Fabio Estevam" <festevam@gmail.com>, Andriy
 Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, Haibo Chen
 <haibo.chen@nxp.com>, "Shawn Guo" <shawnguo@kernel.org>, Hans de Goede
 <hdegoede@redhat.com>, Miquel Raynal <miquel.raynal@bootlin.com>, Jerome
 Brunet <jbrunet@baylibre.com>, "Heiko Stuebner" <heiko@sntech.de>, Florian
 Boor <florian.boor@kernelconcepts.de>, Ciprian Regus
 <ciprian.regus@analog.com>, Lars-Peter Clausen <lars@metafoo.de>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, "Baolin Wang" <baolin.wang@linux.alibaba.com>,
 Jyoti Bhayana <jbhayana@google.com>, Chen-Yu Tsai <wens@csie.org>, Orson
 Zhai <orsonzhai@gmail.com>
Subject: Re: [PATCH 11/15] iio: common: scmi_iio: do not use internal
 iio_dev lock
Message-ID: <20220924164206.37a26d50@jic23-huawei>
In-Reply-To: <20220920112821.975359-12-nuno.sa@analog.com>
References: <20220920112821.975359-1-nuno.sa@analog.com>
	<20220920112821.975359-12-nuno.sa@analog.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_084205_508811_C2A0A838 
X-CRM114-Status: GOOD (  19.00  )
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

T24gVHVlLCAyMCBTZXAgMjAyMiAxMzoyODoxNyArMDIwMApOdW5vIFPDoSA8bnVuby5zYUBhbmFs
b2cuY29tPiB3cm90ZToKCj4gVGhlIGlpb19kZXZpY2UgbG9jayBpcyBvbmx5IG1lYW50IGZvciBp
bnRlcm5hbCB1c2UuIEhlbmNlIGRlZmluZSBhCj4gZGV2aWNlIGxvY2FsIGxvY2sgdG8gcHJvdGVj
dCBhZ2FpbnN0IGNvbmN1cnJlbnQgYWNjZXNzZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTnVubyBT
w6EgPG51bm8uc2FAYW5hbG9nLmNvbT4KT3VjaCAtIHRoaXMgZHJpdmVyIGlzIGZhaXJseSBuZXcg
YW5kIEkgbWlzc2VkIHRoYXQgaXQgd2FzIHVzaW5nIG1sb2NrLgpJIGd1ZXNzIHRoaXMgaXMgYSBn
b29kIGV4YW1wbGUgb2Ygd2h5IHdlIG5lZWQgdG8gZmluaXNoaW5nIGhpZGluZyBpdCBhd2F5IQoK
UGF0Y2ggbG9va3MgZmluZSB0byBtZSAtIEknbGwgcGljayB1cCBpbiB2Mi4KCkpvbmF0aGFuCgo+
IC0tLQo+ICBkcml2ZXJzL2lpby9jb21tb24vc2NtaV9zZW5zb3JzL3NjbWlfaWlvLmMgfCA5ICsr
KysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9jb21tb24vc2NtaV9zZW5zb3JzL3NjbWlf
aWlvLmMgYi9kcml2ZXJzL2lpby9jb21tb24vc2NtaV9zZW5zb3JzL3NjbWlfaWlvLmMKPiBpbmRl
eCA1NGNjZjE5YWIyYmIuLmQ5MmY3ZjY1MWY3YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2lpby9j
b21tb24vc2NtaV9zZW5zb3JzL3NjbWlfaWlvLmMKPiArKysgYi9kcml2ZXJzL2lpby9jb21tb24v
c2NtaV9zZW5zb3JzL3NjbWlfaWlvLmMKPiBAQCAtMTUsNiArMTUsNyBAQAo+ICAjaW5jbHVkZSA8
bGludXgva2VybmVsLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9rdGhyZWFkLmg+Cj4gICNpbmNsdWRl
IDxsaW51eC9tb2R1bGUuaD4KPiArI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Cj4gICNpbmNsdWRl
IDxsaW51eC9zY21pX3Byb3RvY29sLmg+Cj4gICNpbmNsdWRlIDxsaW51eC90aW1lLmg+Cj4gICNp
bmNsdWRlIDxsaW51eC90eXBlcy5oPgo+IEBAIC0yNyw2ICsyOCw4IEBAIHN0cnVjdCBzY21pX2lp
b19wcml2IHsKPiAgCXN0cnVjdCBzY21pX3Byb3RvY29sX2hhbmRsZSAqcGg7Cj4gIAljb25zdCBz
dHJ1Y3Qgc2NtaV9zZW5zb3JfaW5mbyAqc2Vuc29yX2luZm87Cj4gIAlzdHJ1Y3QgaWlvX2RldiAq
aW5kaW9fZGV2Owo+ICsJLyogbG9jayB0byBwcm90ZWN0IGFnYWluc3QgbXVsdGlwbGUgYWNjZXNz
IHRvIHRoZSBkZXZpY2UgKi8KPiArCXN0cnVjdCBtdXRleCBsb2NrOwo+ICAJLyogYWRkaW5nIG9u
ZSBhZGRpdGlvbmFsIGNoYW5uZWwgZm9yIHRpbWVzdGFtcCAqLwo+ICAJczY0IGlpb19idWZbU0NN
SV9JSU9fTlVNX09GX0FYSVMgKyAxXTsKPiAgCXN0cnVjdCBub3RpZmllcl9ibG9jayBzZW5zb3Jf
dXBkYXRlX25iOwo+IEBAIC0xOTgsMTMgKzIwMSwxNCBAQCBzdGF0aWMgaW50IHNjbWlfaWlvX3dy
aXRlX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaWlvX2RldiwKPiAgCQkJICAgICAgc3RydWN0IGlpb19j
aGFuX3NwZWMgY29uc3QgKmNoYW4sIGludCB2YWwsCj4gIAkJCSAgICAgIGludCB2YWwyLCBsb25n
IG1hc2spCj4gIHsKPiArCXN0cnVjdCBzY21pX2lpb19wcml2ICpzZW5zb3IgPSBpaW9fcHJpdihp
aW9fZGV2KTsKPiAgCWludCBlcnI7Cj4gIAo+ICAJc3dpdGNoIChtYXNrKSB7Cj4gIAljYXNlIElJ
T19DSEFOX0lORk9fU0FNUF9GUkVROgo+IC0JCW11dGV4X2xvY2soJmlpb19kZXYtPm1sb2NrKTsK
PiArCQltdXRleF9sb2NrKCZzZW5zb3ItPmxvY2spOwo+ICAJCWVyciA9IHNjbWlfaWlvX3NldF9v
ZHJfdmFsKGlpb19kZXYsIHZhbCwgdmFsMik7Cj4gLQkJbXV0ZXhfdW5sb2NrKCZpaW9fZGV2LT5t
bG9jayk7Cj4gKwkJbXV0ZXhfdW5sb2NrKCZzZW5zb3ItPmxvY2spOwo+ICAJCXJldHVybiBlcnI7
Cj4gIAlkZWZhdWx0Ogo+ICAJCXJldHVybiAtRUlOVkFMOwo+IEBAIC01ODYsNiArNTkwLDcgQEAg
c2NtaV9hbGxvY19paW9kZXYoc3RydWN0IHNjbWlfZGV2aWNlICpzZGV2LAo+ICAJc2Vuc29yLT5z
ZW5zb3JfaW5mbyA9IHNlbnNvcl9pbmZvOwo+ICAJc2Vuc29yLT5zZW5zb3JfdXBkYXRlX25iLm5v
dGlmaWVyX2NhbGwgPSBzY21pX2lpb19zZW5zb3JfdXBkYXRlX2NiOwo+ICAJc2Vuc29yLT5pbmRp
b19kZXYgPSBpaW9kZXY7Cj4gKwltdXRleF9pbml0KCZzZW5zb3ItPmxvY2spOwo+ICAKPiAgCS8q
IGFkZGluZyBvbmUgYWRkaXRpb25hbCBjaGFubmVsIGZvciB0aW1lc3RhbXAgKi8KPiAgCWlpb2Rl
di0+bnVtX2NoYW5uZWxzID0gc2Vuc29yX2luZm8tPm51bV9heGlzICsgMTsKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
