Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93748CD3429
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 10:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFHykwIv/GFCT08W/l2286pCfBr9O2SdYkT1xeKN62Q=; b=CiZ4VY6DsCMN1D
	AFpJVjApq9QfTS0pI63gKOIJVamkDpGRLXr9HB/xhDzD09eN1Wu332d3uVMIKr1G82pcdxiLX9Hju
	Bj8IeC1Bdn56jRbZ9iczBL7GLI1FhzfqYBJ3uQ7Sm2WCccaAd/83ZBIDbbY2SlBR7NT1TfYkZ9A9S
	rbmuwsRILGNC3KQId+HiHFuC0piOpE441P9fwa53jfjPScr+6qmD/6jf8htmVDzNz+nhrRTpBiSau
	UJ5imnJ0pQt5COHUsYVcyy71DXOLx9q3oSif9AMjGLwK7+WcL5IKWRjm2ojdwxt3K1DpC4id70WHL
	6LY2s4IdjDft9Ix3NXLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slR5Q-0000000HOkV-4AWk;
	Tue, 03 Sep 2024 10:48:36 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slR3z-0000000HOK9-0LZJ;
	Tue, 03 Sep 2024 10:47:11 +0000
Received: from mail.maildlp.com (unknown [172.19.163.17])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4WyhyB0mDhz20nQp;
	Tue,  3 Sep 2024 18:41:54 +0800 (CST)
Received: from kwepemd500012.china.huawei.com (unknown [7.221.188.25])
	by mail.maildlp.com (Postfix) with ESMTPS id 131561A0188;
	Tue,  3 Sep 2024 18:46:50 +0800 (CST)
Received: from [10.67.111.176] (10.67.111.176) by
 kwepemd500012.china.huawei.com (7.221.188.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.34; Tue, 3 Sep 2024 18:46:48 +0800
Message-ID: <0becf4e0-2f66-4c26-b0b3-59ee232eaaef@huawei.com>
Date: Tue, 3 Sep 2024 18:46:48 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 05/12] net: ftgmac100: Convert using
 devm_clk_get_enabled() in ftgmac100_setup_clk()
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
CC: <florian.fainelli@broadcom.com>, <andrew@lunn.ch>, <olteanv@gmail.com>,
	<davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
	<pabeni@redhat.com>, <wens@csie.org>, <jernej.skrabec@gmail.com>,
	<samuel@sholland.org>, <heiko@sntech.de>, <yisen.zhuang@huawei.com>,
	<salil.mehta@huawei.com>, <hauke@hauke-m.de>, <alexandre.torgue@foss.st.com>,
	<joabreu@synopsys.com>, <mcoquelin.stm32@gmail.com>, <wellslutw@gmail.com>,
	<radhey.shyam.pandey@amd.com>, <michal.simek@amd.com>,
	<ajay.kathat@microchip.com>, <claudiu.beznea@tuxon.dev>, <kvalo@kernel.org>,
	<jacky_chou@aspeedtech.com>, <netdev@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-sunxi@lists.linux.dev>,
	<linux-rockchip@lists.infradead.org>,
	<linux-stm32@st-md-mailman.stormreply.com>, <linux-wireless@vger.kernel.org>
References: <20240831021334.1907921-1-lizetao1@huawei.com>
 <20240831021334.1907921-6-lizetao1@huawei.com>
 <nyfm5mxrrvfeu7s25qzjxbatvgnppq7exmca3sccmm6lz7nxan@xxsdgcrueoen>
From: Li Zetao <lizetao1@huawei.com>
In-Reply-To: <nyfm5mxrrvfeu7s25qzjxbatvgnppq7exmca3sccmm6lz7nxan@xxsdgcrueoen>
X-Originating-IP: [10.67.111.176]
X-ClientProxiedBy: dggpeml500005.china.huawei.com (7.185.36.59) To
 kwepemd500012.china.huawei.com (7.221.188.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_034707_806373_7E3835D8 
X-CRM114-Status: GOOD (  26.63  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgrlnKggMjAyNC85LzMgMTY6MDksIFV3ZSBLbGVpbmUtS8O2bmlnIOWGmemBkzoKPiBIZWxs
bywKPiAKPiBPbiBTYXQsIEF1ZyAzMSwgMjAyNCBhdCAxMDoxMzoyN0FNICswODAwLCBMaSBaZXRh
byB3cm90ZToKPj4gVXNlIGRldm1fY2xrX2dldF9lbmFibGVkKCkgaW5zdGVhZCBvZiBkZXZtX2Ns
a19nZXQoKSArCj4+IGNsa19wcmVwYXJlX2VuYWJsZSgpLCB3aGljaCBjYW4gbWFrZSB0aGUgY2xr
IGNvbnNpc3RlbnQgd2l0aCB0aGUgZGV2aWNlCj4+IGxpZmUgY3ljbGUgYW5kIHJlZHVjZSB0aGUg
cmlzayBvZiB1bnJlbGVhc2VkIGNsayByZXNvdXJjZXMuIFNpbmNlIHRoZQo+PiBkZXZpY2UgZnJh
bWV3b3JrIGhhcyBhdXRvbWF0aWNhbGx5IHJlbGVhc2VkIHRoZSBjbGsgcmVzb3VyY2UsIHRoZXJl
IGlzCj4+IG5vIG5lZWQgdG8gZXhlY3V0ZSBjbGtfZGlzYWJsZV91bnByZXBhcmUoY2xrKSBvbiB0
aGUgZXJyb3IgcGF0aCwgZHJvcAo+PiB0aGUgY2xlYW51cF9jbGsgbGFiZWwsIGFuZCB0aGUgb3Jp
Z2luYWwgZXJyb3IgcHJvY2VzcyBjYW4gcmV0dXJuIGRpcmVjdGx5Lgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBMaSBaZXRhbyA8bGl6ZXRhbzFAaHVhd2VpLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9u
ZXQvZXRoZXJuZXQvZmFyYWRheS9mdGdtYWMxMDAuYyB8IDI3ICsrKysrKy0tLS0tLS0tLS0tLS0t
LS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygt
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvZmFyYWRheS9mdGdtYWMx
MDAuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ZhcmFkYXkvZnRnbWFjMTAwLmMKPj4gaW5kZXgg
NGM1NDZjM2FlZjBmLi5lYjU3YzgyMmM1YWMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ZhcmFkYXkvZnRnbWFjMTAwLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
ZmFyYWRheS9mdGdtYWMxMDAuYwo+PiBAQCAtMTc1MiwxMyArMTc1MiwxMCBAQCBzdGF0aWMgaW50
IGZ0Z21hYzEwMF9zZXR1cF9jbGsoc3RydWN0IGZ0Z21hYzEwMCAqcHJpdikKPj4gICAJc3RydWN0
IGNsayAqY2xrOwo+PiAgIAlpbnQgcmM7Cj4+ICAgCj4+IC0JY2xrID0gZGV2bV9jbGtfZ2V0KHBy
aXYtPmRldiwgTlVMTCAvKiBNQUNDTEsgKi8pOwo+PiArCWNsayA9IGRldm1fY2xrX2dldF9lbmFi
bGVkKHByaXYtPmRldiwgTlVMTCAvKiBNQUNDTEsgKi8pOwo+PiAgIAlpZiAoSVNfRVJSKGNsaykp
Cj4+ICAgCQlyZXR1cm4gUFRSX0VSUihjbGspOwo+PiAgIAlwcml2LT5jbGsgPSBjbGs7Cj4+IC0J
cmMgPSBjbGtfcHJlcGFyZV9lbmFibGUocHJpdi0+Y2xrKTsKPj4gLQlpZiAocmMpCj4+IC0JCXJl
dHVybiByYzsKPj4gICAKPj4gICAJLyogQXNwZWVkIHNwZWNpZmllcyBhIDEwME1IeiBjbG9jayBp
cyByZXF1aXJlZCBmb3IgdXAgdG8KPj4gICAJICogMTAwME1iaXQgbGluayBzcGVlZHMuIEFzIE5D
U0kgaXMgbGltaXRlZCB0byAxMDBNYml0LCAyNU1Iego+PiBAQCAtMTc2NywyMSArMTc2NCwxNyBA
QCBzdGF0aWMgaW50IGZ0Z21hYzEwMF9zZXR1cF9jbGsoc3RydWN0IGZ0Z21hYzEwMCAqcHJpdikK
Pj4gICAJcmMgPSBjbGtfc2V0X3JhdGUocHJpdi0+Y2xrLCBwcml2LT51c2VfbmNzaSA/IEZUR01B
Q18yNU1IWiA6Cj4+ICAgCQkJICBGVEdNQUNfMTAwTUhaKTsKPj4gICAJaWYgKHJjKQo+PiAtCQln
b3RvIGNsZWFudXBfY2xrOwo+PiArCQlyZXR1cm4gcmM7Cj4+ICAgCj4+ICAgCS8qIFJDTEsgaXMg
Zm9yIFJNSUksIHR5cGljYWxseSB1c2VkIGZvciBOQ1NJLiBPcHRpb25hbCBiZWNhdXNlIGl0J3Mg
bm90Cj4+ICAgCSAqIG5lY2Vzc2FyeSBpZiBpdCdzIHRoZSBBU1QyNDAwIE1BQywgb3IgdGhlIE1B
QyBpcyBjb25maWd1cmVkIGZvcgo+PiAgIAkgKiBSR01JSSwgb3IgdGhlIGNvbnRyb2xsZXIgaXMg
bm90IGFuIEFTUEVFRC1iYXNlZCBjb250cm9sbGVyLgo+PiAgIAkgKi8KPj4gLQlwcml2LT5yY2xr
ID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKHByaXYtPmRldiwgIlJDTEsiKTsKPj4gLQlyYyA9IGNs
a19wcmVwYXJlX2VuYWJsZShwcml2LT5yY2xrKTsKPj4gLQlpZiAoIXJjKQo+PiAtCQlyZXR1cm4g
MDsKPj4gKwlwcml2LT5yY2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsX2VuYWJsZWQocHJpdi0+
ZGV2LCAiUkNMSyIpOwo+PiArCWlmIChJU19FUlIocHJpdi0+cmNsaykpCj4+ICsJCXJldHVybiBQ
VFJfRVJSKHByaXYtPnJjbGspOwo+PiAgIAo+PiAtY2xlYW51cF9jbGs6Cj4+IC0JY2xrX2Rpc2Fi
bGVfdW5wcmVwYXJlKHByaXYtPmNsayk7Cj4+IC0KPj4gLQlyZXR1cm4gcmM7Cj4+ICsJcmV0dXJu
IDA7Cj4gCj4gWW91J3JlIGNoYW5naW5nIHNlbWFudGljcyBoZXJlLiBCZWZvcmUgeW91ciBwYXRj
aCBmdGdtYWMxMDBfc2V0dXBfY2xrKCkKPiB3YXMgbGVmdCB3aXRoIHByaXYtPmNsayBkaXNhYmxl
ZDsgbm93IHlvdSBrZWVwIGl0IGVuYWJsZWQuCkJlZm9yZSBteSBwYXRjaCwgZnRnbWFjMTAwX3Nl
dHVwX2NsaygpIHdhcyBvbmx5IGxlZnQgd2l0aCBwcml2LT5jbGsgCmRpc2FibGVkIHdoZW4gZXJy
b3Igb2NjdXJzLCBhbmQgd2FzIGxlZnQgd2l0aCBwcml2LT5jbGsgZW5hYmxlZCB3aGVuIG5vIApl
cnJvciBvY2N1cnMgYmVjYXVzZSB3aGVuIGVuYWJsaW5nIHByaXYtPnJjbGsgc3VjY2Vzc2Z1bGx5
LCBpdCB3aWxsIApyZXR1cm4gMCBkaXJlY3RseSwgYW5kIHdoZW4gZW5hYmxpbmcgcHJpdi0+cmNs
ayBmYWlsZWQsIGl0IHdpbGwgZGlzYWJsZSAKcHJpdi0+Y2xrLgoKSXQgdHVybnMgb3V0IHRoYXQg
dGhlIGNvZGUgbG9naWMgaXMgYSBiaXQgY291bnRlci1pbnR1aXRpdmUsIGJ1dCB0aGUgCnJlYWRh
YmlsaXR5IGhhcyBiZWVuIGltcHJvdmVkIGFmdGVyIGFkanVzdG1lbnRzLgo+IAo+IEZ1cnRoZXIg
bm90ZSB0aGF0IHRoZXJlIGlzIGEgYnVnIGhlcmUsIGJlY2F1c2UgaW4gZnRnbWFjMTAwX3Byb2Jl
KCkKPiAoaS5lLiB0aGUgY2FsbGVyIG9mIGZ0Z21hYzEwMF9zZXR1cF9jbGsoKSkKPiBjbGtfZGlz
YWJsZV91bnByZXBhcmUocHJpdi0+Y2xrKSBpcyBjYWxsZWQgaW4gdGhlIGVycm9yIHBhdGguCj4g
KEkgb25seSBsb29rZWQgcXVpY2tseSwgc28gSSBtaWdodCBoYXZlIG1pc3NlZCBhIGRldGFpbC4p
CkkgaGF2ZSBjb25zaWRlcmVkIHRoZSBjYXNlIHRoYXQgY2xrX2Rpc2FibGVfdW5wcmVwYXJlIHdp
bGwgbm90IGJlIApleGVjdXRlZCBvbiB0aGUgd3JvbmcgcGF0aCBpbiBmdGdtYWMxMDBfcHJvYmUo
KS4gU28gSSB1bmRlcnN0YW5kIHRoYXQgCnRoZSBwcm9ibGVtIHlvdSBtZW50aW9uZWQgc2hvdWxk
IG5vdCBleGlzdC4KPiAKPiBTbyB3aGlsZSB5b3VyIHBhdGNoIGlzIGFuIGltcHJvdmVtZW50IGZv
ciBjbG9jayBlbmFibGUvZGlzYWJsZQo+IGJhbGFuY2luZywgaXQgbWlnaHQgcmVncmVzcyBvbiBw
b3dlciBjb25zdW1wdGlvbi4KPiAKPj4gICB9Cj4+ICAgCj4+ICAgc3RhdGljIGJvb2wgZnRnbWFj
MTAwX2hhc19jaGlsZF9ub2RlKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsIGNvbnN0IGNoYXIgKm5h
bWUpCj4+IEBAIC0xOTk2LDE2ICsxOTg5LDEzIEBAIHN0YXRpYyBpbnQgZnRnbWFjMTAwX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICAgCWVyciA9IHJlZ2lzdGVyX25ldGRl
dihuZXRkZXYpOwo+PiAgIAlpZiAoZXJyKSB7Cj4+ICAgCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJG
YWlsZWQgdG8gcmVnaXN0ZXIgbmV0ZGV2XG4iKTsKPj4gLQkJZ290byBlcnJfcmVnaXN0ZXJfbmV0
ZGV2Owo+PiArCQlnb3RvIGVycl9waHlfY29ubmVjdDsKPj4gICAJfQo+PiAgIAo+PiAgIAluZXRk
ZXZfaW5mbyhuZXRkZXYsICJpcnEgJWQsIG1hcHBlZCBhdCAlcFxuIiwgbmV0ZGV2LT5pcnEsIHBy
aXYtPmJhc2UpOwo+PiAgIAo+PiAgIAlyZXR1cm4gMDsKPj4gICAKPj4gLWVycl9yZWdpc3Rlcl9u
ZXRkZXY6Cj4+IC0JY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHByaXYtPnJjbGspOwo+PiAtCWNsa19k
aXNhYmxlX3VucHJlcGFyZShwcml2LT5jbGspOwo+PiAgIGVycl9waHlfY29ubmVjdDoKPj4gICAJ
ZnRnbWFjMTAwX3BoeV9kaXNjb25uZWN0KG5ldGRldik7Cj4+ICAgZXJyX25jc2lfZGV2Ogo+PiBA
QCAtMjAzNCw5ICsyMDI0LDYgQEAgc3RhdGljIHZvaWQgZnRnbWFjMTAwX3JlbW92ZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiAgIAkJbmNzaV91bnJlZ2lzdGVyX2Rldihwcml2LT5u
ZGV2KTsKPj4gICAJdW5yZWdpc3Rlcl9uZXRkZXYobmV0ZGV2KTsKPj4gICAKPj4gLQljbGtfZGlz
YWJsZV91bnByZXBhcmUocHJpdi0+cmNsayk7Cj4+IC0JY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHBy
aXYtPmNsayk7Cj4+IC0KPj4gICAJLyogVGhlcmUncyBhIHNtYWxsIGNoYW5jZSB0aGUgcmVzZXQg
dGFzayB3aWxsIGhhdmUgYmVlbiByZS1xdWV1ZWQsCj4+ICAgCSAqIGR1cmluZyBzdG9wLCBtYWtl
IHN1cmUgaXQncyBnb25lIGJlZm9yZSB3ZSBmcmVlIHRoZSBzdHJ1Y3R1cmUuCj4+ICAgCSAqLwo+
IAo+IEJlc3QgcmVnYXJkcwo+IFV3ZQoKVGhhbmtzLApMaSBaZXRhby4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
