Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6833EE6F09E
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Nov 2024 13:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bKSunFIFGU0rYGlmkSzjEQp29ygAJ9y5Dg30RPx7oqo=; b=GeZ68+OJqMROM4
	Mr7zhSmlIwSkZenVZ9V1C8ArkRLAI0odnu73qBmL8SsASNIRyK43DLKl64BLmwUBbUALXabj3MKrW
	O+SJi2JtgDRnxS12KUIJVr2RfgsX7eRm1r3+5yLU8XKDezNtLoGgkvkfhCpcSAsAeSiey8HCUEF6v
	B3pfz2eVEXTT4IHC/MGtlKm9HIclmhCXrGsVE9KE0HSjSAXc2DcXryvwrS63xuTkBW3Ucj1TEjkrs
	hgl7qOmvWITbHqxvoeB7FJESViKm8EV1pUOIErZHkiMaA85fSCAYFW2sGrEJ2WG7AY4p336SecBEM
	zZ+KzqPX+2bwIAVAmW7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7aM8-0000000BRhb-0VtK;
	Sun, 03 Nov 2024 13:09:24 +0000
Received: from smtp-70.smtpout.orange.fr ([80.12.242.70] helo=msa.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7aM3-0000000BRgl-3tIe
	for linux-rockchip@lists.infradead.org;
	Sun, 03 Nov 2024 13:09:22 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id 7aLrtuVZGGfMn7aLrt2ZJd; Sun, 03 Nov 2024 14:09:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1730639353;
	bh=pHCYMRyEhUD58GA3IYCTR1CfQUuJWA0GVifKU3o2xlA=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=luModrrdwcGEIRjb4I/DgierMEI21v2l9+D4OLiHpFiQ/o5mxJZNY5ktBocmR2DxI
	 HF53OlIc+M5352fldvfSHl04LKpI7WpYAq1qQ3HyETKnHfTj1fVvqR/44FRTvnhC43
	 /cXUW4MEuF4/lUqHIs4npnWFJJGMHOg9/5EMw+orXtbbLHi0nA1dw+Uisv/OWT7KUS
	 h6S4slSIV1G/0gMAl6/vfcyw4Kv1Y7uVupPr6ADHCcGP0mni5PY6Gxy+vZnp+pe8Mi
	 4k5nr7vZgwmq+mt3mMSVwCq4OCbW7aMxNzW7PTqOksalYlmKCyhgChkKdMTiTgqi9o
	 KB2RORauQAwyA==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Sun, 03 Nov 2024 14:09:13 +0100
X-ME-IP: 90.11.132.44
Message-ID: <96938e54-70cf-4e81-9072-8af48883a769@wanadoo.fr>
Date: Sun, 3 Nov 2024 14:09:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] scsi: ufs: rockchip: initial support for UFS
To: Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org
References: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
 <1728368130-37213-6-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <1728368130-37213-6-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241103_050920_472779_9B437E90 
X-CRM114-Status: GOOD (  17.38  )
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

TGUgMDgvMTAvMjAyNCDDoCAwODoxNSwgU2hhd24gTGluIGEgw6ljcml0wqA6Cj4gUkszNTc2IFNv
QyBjb250YWlucyBhIFVGUyBjb250cm9sbGVyLCBhZGQgaW5pdGlhbCBzdXBwb3J0IGZvdCBpdC4K
CnMvZm90L2Zvci8KCj4gVGhlIGZlYXR1cmVzIGFyZToKPiAoMSkgc3VwcG9ydCBVRlMgMi4wIGZl
YXR1cmVzCj4gKDIpIEhpZ2ggc3BlZWQgdXAgdG8gSFMtRzMKPiAoMykgMlJYLTJUWCBsYW5lcwo+
ICg0KSBhdXRvIEg4IGVudHJ5IGFuZCBleGl0Cj4gCj4gU29mdHdhcmUgbGltaXRhdGlvbjoKPiAo
MSkgSENFIHByb2NlZHVyZTogZW5iYWxlIGNvbnRyb2xsZXItPmVuYmFsZSBpbnRyLT5kbWVfcmVz
ZXQtPmRtZV9lbmFibGUKCnMvZW5iYWxlL2VuYWJsZS8gCXggMgoKPiAoMikgZGlzYWJsZSB1bmlw
cm8gdGltZW91dCB2YWx1ZXMgYmVmb3JlIHBvd2VyIG1vZGUgY2hhbmdlCj4gCj4gU2lnbmVkLW9m
Zi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gCgpObyBuZWVkIGZv
ciBhbiBleHRyYSBlbXB0eSBsaW5lCgo+IC0tLQoKLi4uCgo+ICtzdGF0aWMgaW50IHVmc19yb2Nr
Y2hpcF9jb21tb25faW5pdChzdHJ1Y3QgdWZzX2hiYSAqaGJhKQo+ICt7Cj4gKwlzdHJ1Y3QgZGV2
aWNlICpkZXYgPSBoYmEtPmRldjsKPiArCXN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYgPSB0
b19wbGF0Zm9ybV9kZXZpY2UoZGV2KTsKPiArCXN0cnVjdCB1ZnNfcm9ja2NoaXBfaG9zdCAqaG9z
dDsKPiArCWludCBlcnI7Cj4gKwo+ICsJaG9zdCA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigq
aG9zdCksIEdGUF9LRVJORUwpOwo+ICsJaWYgKCFob3N0KQo+ICsJCXJldHVybiAtRU5PTUVNOwo+
ICsKPiArCS8qIHN5c3RlbSBjb250cm9sIHJlZ2lzdGVyIGZvciBoY2kgKi8KPiArCWhvc3QtPnVm
c19zeXNfY3RybCA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZV9ieW5hbWUocGRldiwg
ImhjaV9ncmYiKTsKPiArCWlmIChJU19FUlIoaG9zdC0+dWZzX3N5c19jdHJsKSkKPiArCQlyZXR1
cm4gZGV2X2Vycl9wcm9iZShkZXYsIFBUUl9FUlIoaG9zdC0+dWZzX3N5c19jdHJsKSwKPiArCQkJ
CQkiY2Fubm90IGlvcmVtYXAgZm9yIGhjaSBzeXN0ZW0gY29udHJvbCByZWdpc3RlclxuIik7Cj4g
Kwo+ICsJLyogc3lzdGVtIGNvbnRyb2wgcmVnaXN0ZXIgZm9yIG1waHkgKi8KPiArCWhvc3QtPnVm
c19waHlfY3RybCA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZV9ieW5hbWUocGRldiwg
Im1waHlfZ3JmIik7Cj4gKwlpZiAoSVNfRVJSKGhvc3QtPnVmc19waHlfY3RybCkpCj4gKwkJcmV0
dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKGhvc3QtPnVmc19waHlfY3RybCksCj4gKwkJ
CQkiY2Fubm90IGlvcmVtYXAgZm9yIG1waHkgc3lzdGVtIGNvbnRyb2wgcmVnaXN0ZXJcbiIpOwo+
ICsKPiArCS8qIG1waHkgYmFzZSByZWdpc3RlciAqLwo+ICsJaG9zdC0+bXBoeV9iYXNlID0gZGV2
bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlX2J5bmFtZShwZGV2LCAibXBoeSIpOwo+ICsJaWYg
KElTX0VSUihob3N0LT5tcGh5X2Jhc2UpKQo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwg
UFRSX0VSUihob3N0LT5tcGh5X2Jhc2UpLAo+ICsJCQkJImNhbm5vdCBpb3JlbWFwIGZvciBtcGh5
IGJhc2UgcmVnaXN0ZXJcbiIpOwo+ICsKPiArCWhvc3QtPnJzdCA9IGRldm1fcmVzZXRfY29udHJv
bF9hcnJheV9nZXRfZXhjbHVzaXZlKGRldik7Cj4gKwlpZiAoSVNfRVJSKGhvc3QtPnJzdCkpCj4g
KwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKGhvc3QtPnJzdCksCj4gKwkJCQki
ZmFpbGVkIHRvIGdldCByZXNldCBjb250cm9sXG4iKTsKPiArCj4gKwlyZXNldF9jb250cm9sX2Fz
c2VydChob3N0LT5yc3QpOwo+ICsJdXNsZWVwX3JhbmdlKDEsIDIpOwo+ICsJcmVzZXRfY29udHJv
bF9kZWFzc2VydChob3N0LT5yc3QpOwo+ICsKPiArCWhvc3QtPnJlZl9vdXRfY2xrID0gZGV2bV9j
bGtfZ2V0X2VuYWJsZWQoZGV2LCAicmVmX291dCIpOwo+ICsJaWYgKElTX0VSUihob3N0LT5yZWZf
b3V0X2NsaykpCj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKGhvc3QtPnJl
Zl9vdXRfY2xrKSwKPiArCQkJCSJyZWZfb3V0IHVuYXZhaWxhYmxlXG4iKTsKPiArCj4gKwlob3N0
LT5yc3RfZ3BpbyA9IGRldm1fZ3Bpb2RfZ2V0KCZwZGV2LT5kZXYsICJyZXNldCIsIEdQSU9EX09V
VF9MT1cpOwo+ICsJaWYgKElTX0VSUihob3N0LT5yc3RfZ3BpbykpCj4gKwkJcmV0dXJuIGRldl9l
cnJfcHJvYmUoJnBkZXYtPmRldiwgUFRSX0VSUihob3N0LT5yc3RfZ3BpbyksCj4gKwkJCQkiaW52
YWxpZCByZXNldC1ncGlvcyBwcm9wZXJ0eSBpbiBub2RlXG4iKTsKPiArCj4gKwlob3N0LT5jbGtz
WzBdLmlkID0gImNvcmUiOwo+ICsJaG9zdC0+Y2xrc1sxXS5pZCA9ICJwY2xrIjsKPiArCWhvc3Qt
PmNsa3NbMl0uaWQgPSAicGNsa19tcGh5IjsKPiArCWVyciA9IGRldm1fY2xrX2J1bGtfZ2V0X29w
dGlvbmFsKGRldiwgVUZTX01BWF9DTEtTLCBob3N0LT5jbGtzKTsKPiArCWlmIChlcnIpCj4gKwkJ
cmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBlcnIsICJmYWlsZWQgdG8gZ2V0IGNsb2Nrc1xuIik7
Cj4gKwo+ICsJZXJyID0gY2xrX2J1bGtfcHJlcGFyZV9lbmFibGUoVUZTX01BWF9DTEtTLCBob3N0
LT5jbGtzKTsKClRoaXMgaGFzIHRvIGJlIHVuZG9uZSBzb21ld2hlcmUsIGxpa2VseSBhdCB0aGUg
ZW5kIG9mIHVmc19yb2NrY2hpcF9yZW1vdmUoKS4KCj4gKwlpZiAoZXJyKQo+ICsJCXJldHVybiBk
ZXZfZXJyX3Byb2JlKGRldiwgZXJyLCAiZmFpbGVkIHRvIGVuYWJsZSBjbG9ja3NcbiIpOwo+ICsK
PiArCWhvc3QtPmhiYSA9IGhiYTsKPiArCj4gKwl1ZnNoY2Rfc2V0X3ZhcmlhbnQoaGJhLCBob3N0
KTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQoKLi4uCgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHVm
c19oYmFfdmFyaWFudF9vcHMgdWZzX2hiYV9yazM1NzZfdm9wcyA9IHsKPiArCS5uYW1lID0gInJr
MzU3NiIsCj4gKwkuaW5pdCA9IHVmc19yb2NrY2hpcF9yazM1NzZfaW5pdCwKPiArCS5kZXZpY2Vf
cmVzZXQgPSB1ZnNfcm9ja2NoaXBfZGV2aWNlX3Jlc2V0LAo+ICsJLmhjZV9lbmFibGVfbm90aWZ5
ID0gdWZzX3JvY2tjaGlwX2hjZV9lbmFibGVfbm90aWZ5LAo+ICsJLnBoeV9pbml0aWFsaXphdGlv
biA9IHVmc19yb2NrY2hpcF9yazM1NzZfcGh5X2luaXQsCj4gK307Cj4gKwo+ICtzdGF0aWMgY29u
c3Qgc3RydWN0IG9mX2RldmljZV9pZCB1ZnNfcm9ja2NoaXBfb2ZfbWF0Y2hbXSA9IHsKPiArCXsg
LmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTc2LXVmc2hjIiwgLmRhdGEgPSAmdWZzX2hiYV9y
azM1NzZfdm9wc30sCgpNaXNzaW5nIHNwYWNlIGJlZm9yZSBlbmRpbmcgfQoKPiArCXt9LAoKTm8g
bmVlZCBmb3IgYW4gZXh0cmEgLCBoZXJlLgoKPiArfTsKPiArTU9EVUxFX0RFVklDRV9UQUJMRShv
ZiwgdWZzX3JvY2tjaGlwX29mX21hdGNoKTsKCi4uLgoKPiArc3RhdGljIHZvaWQgdWZzX3JvY2tj
aGlwX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICt7Cj4gKwlzdHJ1Y3Qg
dWZzX2hiYSAqaGJhID0gcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7Cj4gKwlzdHJ1Y3QgdWZz
X3JvY2tjaGlwX2hvc3QgKmhvc3QgPSB1ZnNoY2RfZ2V0X3ZhcmlhbnQoaGJhKTsKPiArCj4gKwlw
bV9ydW50aW1lX2ZvcmJpZCgmcGRldi0+ZGV2KTsKPiArCXBtX3J1bnRpbWVfZ2V0X25vcmVzdW1l
KCZwZGV2LT5kZXYpOwo+ICsJdWZzaGNkX3JlbW92ZShoYmEpOwo+ICsJdWZzaGNkX2RlYWxsb2Nf
aG9zdChoYmEpOwo+ICsJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGhvc3QtPnJlZl9vdXRfY2xrKTsK
Ck5vIG5lZWQgZm9yIGNsa19kaXNhYmxlX3VucHJlcGFyZSgpLCByZWZfb3V0X2NsayBjb21lcyBm
cm9tIApkZXZtX2Nsa19nZXRfZW5hYmxlZCgpLCBzbyB0aGUgZnJhbWV3b3JrIHdpbGwgYWxyZWFk
eSBjYWxsIApjbGtfZGlzYWJsZV91bnByZXBhcmUoKS4KCj4gK30KCi4uLgoKQ0oKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
