Return-Path: <SRS0=+3Ix=ID=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81B17C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 09:25:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D82EB64FCF
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 09:25:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D82EB64FCF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OReyDlakfZAe1uoByp8NsQyAKSbCFmQoN0ONOgvpvGI=; b=PuBu/VSXY9p8FlsaBgwsLxwUH
	TI07EKtWsjR2HZUpBIsCLZyAk0LTl3f8R2ketcrETfKWBVrB6bq4aVtc15reVGovS0CiOGhabLFY0
	jastYsbq4hwmIK7J6VKHQSF35wd8MeXYHUJlCGa6tpT9TFopLIs15XI3aWrVqLNBSDRpPwgEoGaNM
	EDEaMXdqFfGhD+mJYq9IQR3e2ECoX+Urt9Qxb0iYAs6VHEmbEdgU0ehoB1S9z26ziYkXkBAtV5eg8
	IWbdpcadU1vMO6KaygWJ6BU5q2AsR2Zw1l35Qdd5k/6ODXV/DCW/gwZJDvC8qsHGWfFFBXnebbdcT
	/zMMQ24SA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lI6hb-00EGiF-Cf; Fri, 05 Mar 2021 09:24:55 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lI6hR-00EGdR-4f; Fri, 05 Mar 2021 09:24:47 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:b9e2:e9f:d661:5a2f] (unknown
 [IPv6:2a01:e0a:4cb:a870:b9e2:e9f:d661:5a2f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1417F1F46840;
 Fri,  5 Mar 2021 09:24:40 +0000 (GMT)
Subject: Re: [PATCH v4 03/11] media: hantro: change hantro_codec_ops run
 prototype to return errors
To: Ezequiel Garcia <ezequiel@collabora.com>, p.zabel@pengutronix.de,
 mchehab@kernel.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 peng.fan@nxp.com, hverkuil-cisco@xs4all.nl, dan.carpenter@oracle.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20210303113952.178519-1-benjamin.gaignard@collabora.com>
 <20210303113952.178519-4-benjamin.gaignard@collabora.com>
 <22a8ea464f4c7dcb7a90889f53d85f003b7c739a.camel@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <236d0327-61d3-8e25-fc37-c8aa5563f9c8@collabora.com>
Date: Fri, 5 Mar 2021 10:24:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <22a8ea464f4c7dcb7a90889f53d85f003b7c739a.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_092445_442318_B08BBCE4 
X-CRM114-Status: GOOD (  17.95  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

CkxlIDAzLzAzLzIwMjEgw6AgMjI6NTYsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdMKgOgo+IE9u
IFdlZCwgMjAyMS0wMy0wMyBhdCAxMjozOSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6
Cj4+IENoYW5nZSBoYW50cm9fY29kZWNfb3BzIHJ1biBwcm90b3R5cGUgZnJvbSAndm9pZCcgdG8g
J2ludCcuCj4+IFRoaXMgYWxsb3cgdG8gY2FuY2VsIHRoZSBqb2IgaWYgYW4gZXJyb3Igb2NjdXIg
d2hpbGUgY29uZmlndXJpbmcKPj4gdGhlIGhhcmR3YXJlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBC
ZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4gLS0t
Cj4+ICDCoGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jwqDCoMKgwqAg
fMKgIDQgKysrLQo+PiAgwqAuLi4vc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cxX2gyNjRf
ZGVjLmMgfMKgIDYgKysrKy0tCj4+ICDCoC4uLi9tZWRpYS9oYW50cm8vaGFudHJvX2cxX21wZWcy
X2RlYy5jwqDCoMKgwqDCoMKgwqAgfMKgIDQgKysrLQo+PiAgwqAuLi4vc3RhZ2luZy9tZWRpYS9o
YW50cm8vaGFudHJvX2cxX3ZwOF9kZWMuY8KgIHzCoCA2ICsrKystLQo+PiAgwqAuLi4vc3RhZ2lu
Zy9tZWRpYS9oYW50cm8vaGFudHJvX2gxX2pwZWdfZW5jLmMgfMKgIDQgKysrLQo+PiAgwqBkcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19ody5owqDCoMKgwqDCoCB8IDE5ICsrKysr
KysrKystLS0tLS0tLS0KPj4gIMKgLi4uL21lZGlhL2hhbnRyby9yazMzOTlfdnB1X2h3X2pwZWdf
ZW5jLmPCoMKgwqDCoCB8wqAgNCArKystCj4+ICDCoC4uLi9tZWRpYS9oYW50cm8vcmszMzk5X3Zw
dV9od19tcGVnMl9kZWMuY8KgwqDCoCB8wqAgNCArKystCj4+ICDCoC4uLi9tZWRpYS9oYW50cm8v
cmszMzk5X3ZwdV9od192cDhfZGVjLmPCoMKgwqDCoMKgIHzCoCA2ICsrKystLQo+PiAgwqA5IGZp
bGVzIGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgYi9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+PiBpbmRleCBlNWYyMDBlNjQ5
OTMuLmFjMTQyOWYwMGIzMyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hh
bnRyby9oYW50cm9fZHJ2LmMKPj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9o
YW50cm9fZHJ2LmMKPj4gQEAgLTE2MSw3ICsxNjEsOSBAQCBzdGF0aWMgdm9pZCBkZXZpY2VfcnVu
KHZvaWQgKnByaXYpCj4+ICAgCj4+ICDCoMKgwqDCoMKgwqDCoMKgdjRsMl9tMm1fYnVmX2NvcHlf
bWV0YWRhdGEoc3JjLCBkc3QsIHRydWUpOwo+PiAgIAo+PiAtwqDCoMKgwqDCoMKgwqBjdHgtPmNv
ZGVjX29wcy0+cnVuKGN0eCk7Cj4+ICvCoMKgwqDCoMKgwqDCoGlmIChjdHgtPmNvZGVjX29wcy0+
cnVuKGN0eCkpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIGVycl9jYW5j
ZWxfam9iOwo+PiArCj4+ICDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOwo+PiAgIAo+PiAgwqBlcnJf
Y2FuY2VsX2pvYjoKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
aGFudHJvX2cxX2gyNjRfZGVjLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRy
b19nMV9oMjY0X2RlYy5jCj4+IGluZGV4IDg0NWJlZjczZDIxOC4uZmNkNGRiMTNjOWZlIDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19nMV9oMjY0X2Rl
Yy5jCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cxX2gyNjRf
ZGVjLmMKPj4gQEAgLTI3MywxMyArMjczLDEzIEBAIHN0YXRpYyB2b2lkIHNldF9idWZmZXJzKHN0
cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4+ICDCoMKgwqDCoMKgwqDCoMKgdmRwdV93cml0ZV9yZWxh
eGVkKHZwdSwgY3R4LT5oMjY0X2RlYy5wcml2LmRtYSwgRzFfUkVHX0FERFJfUVRBQkxFKTsKPj4g
IMKgfQo+PiAgIAo+PiAtdm9pZCBoYW50cm9fZzFfaDI2NF9kZWNfcnVuKHN0cnVjdCBoYW50cm9f
Y3R4ICpjdHgpCj4+ICtpbnQgaGFudHJvX2cxX2gyNjRfZGVjX3J1bihzdHJ1Y3QgaGFudHJvX2N0
eCAqY3R4KQo+PiAgwqB7Cj4+ICDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGhhbnRyb19kZXYgKnZw
dSA9IGN0eC0+ZGV2Owo+PiAgIAo+PiAgwqDCoMKgwqDCoMKgwqDCoC8qIFByZXBhcmUgdGhlIEgy
NjQgZGVjb2RlciBjb250ZXh0LiAqLwo+PiAgwqDCoMKgwqDCoMKgwqDCoGlmIChoYW50cm9faDI2
NF9kZWNfcHJlcGFyZV9ydW4oY3R4KSkKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHJldHVybjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAtRUlOVkFM
Owo+IFRoaXMgc2hvdWxkIGJlIHJldHVybmluZyB0aGUgdmFsdWUgZnJvbSBoYW50cm9faDI2NF9k
ZWNfcHJlcGFyZV9ydW4uCgpUaGF0IHdpbGwgYmUgZml4ZWQgaW4gdGhlIG5leHQgdmVyc2lvbiwg
dGhhbmtzCgpCZW5qYW1pbgoKPgo+IFRoYW5rcyEKPiBFemVxdWllbAo+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
