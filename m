Return-Path: <SRS0=+8WL=CG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07E82C433E2
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Aug 2020 01:07:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C91182080C
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Aug 2020 01:07:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qEmRT/Fe"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C91182080C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KAsUxDPKis0v96P1DjVta/8rkVnYtxjnTV5AmoJtDzw=; b=qEmRT/FerfQ50l+jP5P6ywEOY
	rE5JgTAS9GhAmSyTjf/zp405mJ/LKrAsZ8dAMxM08D6mFORfzuzszTNvAJwVmUKUuSpYjgcKyP2Gw
	Oo3mg2Y9YbdQchMT/iTkrdy6WPb1XTazWSekfl2UiKUgpV+f8Ui0xfSxdDVj8Yv2w7r0EDhwxeAFU
	BWZteXB0/qR12PS0Do/PV7/XmL6WKGLP3aeVBuK5RmXgVEKFwisXPpryr2GEhGCI2sD8hDNXaAZaE
	2hJ/s9tRMZYpwnBFmPT9twzx27nbjMVV/FTfMgqz6+SCsw/ZDe4Iz5QpPuUSWph6N7RzCcBWFG7Je
	hDZ9tElxA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kBSrW-0005PI-2z; Fri, 28 Aug 2020 01:07:26 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kBSrR-0005Kl-GQ
 for linux-rockchip@lists.infradead.org; Fri, 28 Aug 2020 01:07:24 +0000
Received: from localhost (unknown [192.168.167.224])
 by regular1.263xmail.com (Postfix) with ESMTP id 7CEA91332;
 Fri, 28 Aug 2020 09:07:10 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.39] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P4076T139880868853504S1598576829146170_; 
 Fri, 28 Aug 2020 09:07:10 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a62eb6a0f6c8856fdb4068ea23637fdf>
X-RL-SENDER: algea.cao@rock-chips.com
X-SENDER: algea.cao@rock-chips.com
X-LOGIN-NAME: algea.cao@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH] drm: Parse Colorimetry data block from EDID
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20200826142328.131144-1-algea.cao@rock-chips.com>
 <20200827105701.GS6112@intel.com>
From: crj <algea.cao@rock-chips.com>
Message-ID: <4cadf318-cfc3-92d6-6219-170166db94ce@rock-chips.com>
Date: Fri, 28 Aug 2020 09:07:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.1.1
MIME-Version: 1.0
In-Reply-To: <20200827105701.GS6112@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200827_210722_522832_B6103963 
X-CRM114-Status: GOOD (  16.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: daniel@ffwll.ch, airlied@linux.ie, maarten.lankhorst@linux.intel.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, mripard@kernel.org, tzimmermann@suse.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgVmlsbGUgU3lyasOkbMOkLAoK5ZyoIDIwMjAvOC8yNyAxODo1NywgVmlsbGUgU3lyasOkbMOk
IOWGmemBkzoKPiBPbiBXZWQsIEF1ZyAyNiwgMjAyMCBhdCAxMDoyMzoyOFBNICswODAwLCBBbGdl
YSBDYW8gd3JvdGU6Cj4+IENFQSA4NjEuMyBzcGVjIGFkZHMgY29sb3JpbWV0cnkgZGF0YSBibG9j
ayBmb3IgSERNSS4KPj4gUGFyc2luZyB0aGUgYmxvY2sgdG8gZ2V0IHRoZSBjb2xvcmltZXRyeSBk
YXRhIGZyb20KPj4gcGFuZWwuCj4gQW5kIHdoYXQgZXhhY3RseSBkbyB5b3Ugd2FudCB0byBkbyB3
aXRoIHRoYXQgZGF0YT8KCgpXZSBjYW4gZ2V0IGNvbG9yaW1ldHJ5IGRhdGEgYmxvY2sgZnJvbSBl
ZGlkIHRoZW4gc3VwcG9ydAoKSERNSSBjb2xvcmltZXRyeSBzdWNoIGFzIEJUMjAyMC4KCj4+IFNp
Z25lZC1vZmYtYnk6IEFsZ2VhIENhbyA8YWxnZWEuY2FvQHJvY2stY2hpcHMuY29tPgo+PiAtLS0K
Pj4KPj4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyAgfCA0NSArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrCj4+ICAgaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oIHwg
IDMgKysrCj4+ICAgaW5jbHVkZS9kcm0vZHJtX2VkaWQuaCAgICAgIHwgMTQgKysrKysrKysrKysr
Cj4+ICAgMyBmaWxlcyBjaGFuZ2VkLCA2MiBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5j
Cj4+IGluZGV4IDMxNDk2YjZjZmM1Ni4uNjdlNjA3YzA0NDkyIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQu
Ywo+PiBAQCAtMzIyMyw2ICszMjIzLDcgQEAgYWRkX2RldGFpbGVkX21vZGVzKHN0cnVjdCBkcm1f
Y29ubmVjdG9yICpjb25uZWN0b3IsIHN0cnVjdCBlZGlkICplZGlkLAo+PiAgICNkZWZpbmUgVklE
RU9fQkxPQ0sgICAgIDB4MDIKPj4gICAjZGVmaW5lIFZFTkRPUl9CTE9DSyAgICAweDAzCj4+ICAg
I2RlZmluZSBTUEVBS0VSX0JMT0NLCTB4MDQKPj4gKyNkZWZpbmUgQ09MT1JJTUVUUllfREFUQV9C
TE9DSwkJMHg1Cj4+ICAgI2RlZmluZSBIRFJfU1RBVElDX01FVEFEQVRBX0JMT0NLCTB4Ngo+PiAg
ICNkZWZpbmUgVVNFX0VYVEVOREVEX1RBRyAweDA3Cj4+ICAgI2RlZmluZSBFWFRfVklERU9fQ0FQ
QUJJTElUWV9CTE9DSyAweDAwCj4+IEBAIC00MzA5LDYgKzQzMTAsNDggQEAgc3RhdGljIHZvaWQg
Zml4dXBfZGV0YWlsZWRfY2VhX21vZGVfY2xvY2soc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1v
ZGUpCj4+ICAgCW1vZGUtPmNsb2NrID0gY2xvY2s7Cj4+ICAgfQo+PiAgIAo+PiArc3RhdGljIGJv
b2wgY2VhX2RiX2lzX2hkbWlfY29sb3JpbWV0cnlfZGF0YV9ibG9jayhjb25zdCB1OCAqZGIpCj4+
ICt7Cj4+ICsJaWYgKGNlYV9kYl90YWcoZGIpICE9IFVTRV9FWFRFTkRFRF9UQUcpCj4+ICsJCXJl
dHVybiBmYWxzZTsKPj4gKwo+PiArCWlmIChkYlsxXSAhPSBDT0xPUklNRVRSWV9EQVRBX0JMT0NL
KQo+PiArCQlyZXR1cm4gZmFsc2U7Cj4+ICsKPj4gKwlpZiAoY2VhX2RiX3BheWxvYWRfbGVuKGRi
KSA8IDIpCj4+ICsJCXJldHVybiBmYWxzZTsKPj4gKwo+PiArCXJldHVybiB0cnVlOwo+PiArfQo+
PiArCj4+ICtzdGF0aWMgdm9pZAo+PiArZHJtX3BhcnNlX2NvbG9yaW1ldHJ5X2RhdGFfYmxvY2so
c3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgY29uc3QgdTggKmRiKQo+PiArewo+PiAr
CXN0cnVjdCBkcm1faGRtaV9pbmZvICppbmZvID0gJmNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvLmhk
bWk7Cj4+ICsKPj4gKwlpZiAoZGJbMl0gJiBEUk1fRURJRF9DTFJNRVRSWV94dllDQ182MDEpCj4+
ICsJCWluZm8tPmNvbG9yaW1ldHJ5IHw9IERSTV9FRElEX0NMUk1FVFJZX3h2WUNDXzYwMTsKPj4g
KwlpZiAoZGJbMl0gJiBEUk1fRURJRF9DTFJNRVRSWV94dllDQ183MDkpCj4+ICsJCWluZm8tPmNv
bG9yaW1ldHJ5IHw9IERSTV9FRElEX0NMUk1FVFJZX3h2WUNDXzcwOTsKPj4gKwlpZiAoZGJbMl0g
JiBEUk1fRURJRF9DTFJNRVRSWV9zWUNDXzYwMSkKPj4gKwkJaW5mby0+Y29sb3JpbWV0cnkgfD0g
RFJNX0VESURfQ0xSTUVUUllfc1lDQ182MDE7Cj4+ICsJaWYgKGRiWzJdICYgRFJNX0VESURfQ0xS
TUVUUllfQURCWUNDXzYwMSkKPj4gKwkJaW5mby0+Y29sb3JpbWV0cnkgfD0gRFJNX0VESURfQ0xS
TUVUUllfQURCWUNDXzYwMTsKPj4gKwlpZiAoZGJbMl0gJiBEUk1fRURJRF9DTFJNRVRSWV9BREJf
UkdCKQo+PiArCQlpbmZvLT5jb2xvcmltZXRyeSB8PSBEUk1fRURJRF9DTFJNRVRSWV9BREJfUkdC
Owo+PiArCWlmIChkYlsyXSAmIERSTV9FRElEX0NMUk1FVFJZX0JUMjAyMF9DWUNDKQo+PiArCQlp
bmZvLT5jb2xvcmltZXRyeSB8PSBEUk1fRURJRF9DTFJNRVRSWV9CVDIwMjBfQ1lDQzsKPj4gKwlp
ZiAoZGJbMl0gJiBEUk1fRURJRF9DTFJNRVRSWV9CVDIwMjBfWUNDKQo+PiArCQlpbmZvLT5jb2xv
cmltZXRyeSB8PSBEUk1fRURJRF9DTFJNRVRSWV9CVDIwMjBfWUNDOwo+PiArCWlmIChkYlsyXSAm
IERSTV9FRElEX0NMUk1FVFJZX0JUMjAyMF9SR0IpCj4+ICsJCWluZm8tPmNvbG9yaW1ldHJ5IHw9
IERSTV9FRElEX0NMUk1FVFJZX0JUMjAyMF9SR0I7Cj4+ICsJLyogQnl0ZSA0IEJpdCA3OiBEQ0kt
UDMgKi8KPj4gKwlpZiAoZGJbM10gJiBCSVQoNykpCj4+ICsJCWluZm8tPmNvbG9yaW1ldHJ5IHw9
IERSTV9FRElEX0NMUk1FVFJZX0RDSV9QMzsKPj4gKwo+PiArCURSTV9ERUJVR19LTVMoIlN1cHBv
cnRlZCBDb2xvcmltZXRyeSAweCV4XG4iLCBpbmZvLT5jb2xvcmltZXRyeSk7Cj4+ICt9Cj4+ICsK
Pj4gICBzdGF0aWMgYm9vbCBjZWFfZGJfaXNfaGRtaV9oZHJfbWV0YWRhdGFfYmxvY2soY29uc3Qg
dTggKmRiKQo+PiAgIHsKPj4gICAJaWYgKGNlYV9kYl90YWcoZGIpICE9IFVTRV9FWFRFTkRFRF9U
QUcpCj4+IEBAIC00OTk0LDYgKzUwMzcsOCBAQCBzdGF0aWMgdm9pZCBkcm1fcGFyc2VfY2VhX2V4
dChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+PiAgIAkJCWRybV9wYXJzZV92Y2Ri
KGNvbm5lY3RvciwgZGIpOwo+PiAgIAkJaWYgKGNlYV9kYl9pc19oZG1pX2hkcl9tZXRhZGF0YV9i
bG9jayhkYikpCj4+ICAgCQkJZHJtX3BhcnNlX2hkcl9tZXRhZGF0YV9ibG9jayhjb25uZWN0b3Is
IGRiKTsKPj4gKwkJaWYgKGNlYV9kYl9pc19oZG1pX2NvbG9yaW1ldHJ5X2RhdGFfYmxvY2soZGIp
KQo+PiArCQkJZHJtX3BhcnNlX2NvbG9yaW1ldHJ5X2RhdGFfYmxvY2soY29ubmVjdG9yLCBkYik7
Cj4+ICAgCX0KPj4gICB9Cj4+ICAgCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fY29u
bmVjdG9yLmggYi9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPj4gaW5kZXggYWYxNDU2MDhi
NWVkLi5kNTk5YzNiOWU4ODEgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9jb25uZWN0
b3IuaAo+PiArKysgYi9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPj4gQEAgLTIwNyw2ICsy
MDcsOSBAQCBzdHJ1Y3QgZHJtX2hkbWlfaW5mbyB7Cj4+ICAgCj4+ICAgCS8qKiBAeTQyMF9kY19t
b2RlczogYml0bWFwIG9mIGRlZXAgY29sb3Igc3VwcG9ydCBpbmRleCAqLwo+PiAgIAl1OCB5NDIw
X2RjX21vZGVzOwo+PiArCj4+ICsJLyogQGNvbG9yaW1ldHJ5OiBiaXRtYXAgb2Ygc3VwcG9ydGVk
IGNvbG9yaW1ldHJ5IG1vZGVzICovCj4+ICsJdTE2IGNvbG9yaW1ldHJ5Owo+PiAgIH07Cj4+ICAg
Cj4+ICAgLyoqCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZWRpZC5oIGIvaW5jbHVk
ZS9kcm0vZHJtX2VkaWQuaAo+PiBpbmRleCBjZmE0ZjVhZjQ5YWYuLjk4ZmE3OGMyZjgyZCAxMDA2
NDQKPj4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2VkaWQuaAo+PiArKysgYi9pbmNsdWRlL2RybS9k
cm1fZWRpZC5oCj4+IEBAIC0yMjksNiArMjI5LDIwIEBAIHN0cnVjdCBkZXRhaWxlZF90aW1pbmcg
ewo+PiAgIAkJCQkgICAgRFJNX0VESURfWUNCQ1I0MjBfRENfMzYgfCBcCj4+ICAgCQkJCSAgICBE
Uk1fRURJRF9ZQ0JDUjQyMF9EQ18zMCkKPj4gICAKPj4gKy8qCj4+ICsgKiBTdXBwb3J0ZWQgQ29s
b3JpbWV0cnkgZnJvbSBjb2xvcmltZXRyeSBkYXRhIGJsb2NrCj4+ICsgKiBhcyBwZXIgQ0VBIDg2
MS1HIHNwZWMKPj4gKyAqLwo+PiArI2RlZmluZSBEUk1fRURJRF9DTFJNRVRSWV94dllDQ182MDEg
ICAoMSA8PCAwKQo+PiArI2RlZmluZSBEUk1fRURJRF9DTFJNRVRSWV94dllDQ183MDkgICAoMSA8
PCAxKQo+PiArI2RlZmluZSBEUk1fRURJRF9DTFJNRVRSWV9zWUNDXzYwMSAgICAoMSA8PCAyKQo+
PiArI2RlZmluZSBEUk1fRURJRF9DTFJNRVRSWV9BREJZQ0NfNjAxICAoMSA8PCAzKQo+PiArI2Rl
ZmluZSBEUk1fRURJRF9DTFJNRVRSWV9BREJfUkdCICAgICAoMSA8PCA0KQo+PiArI2RlZmluZSBE
Uk1fRURJRF9DTFJNRVRSWV9CVDIwMjBfQ1lDQyAoMSA8PCA1KQo+PiArI2RlZmluZSBEUk1fRURJ
RF9DTFJNRVRSWV9CVDIwMjBfWUNDICAoMSA8PCA2KQo+PiArI2RlZmluZSBEUk1fRURJRF9DTFJN
RVRSWV9CVDIwMjBfUkdCICAoMSA8PCA3KQo+PiArI2RlZmluZSBEUk1fRURJRF9DTFJNRVRSWV9E
Q0lfUDMgICAgICAoMSA8PCAxNSkKPj4gKwo+PiAgIC8qIEVMRCBIZWFkZXIgQmxvY2sgKi8KPj4g
ICAjZGVmaW5lIERSTV9FTERfSEVBREVSX0JMT0NLX1NJWkUJNAo+PiAgIAo+PiAtLSAKPj4gMi4y
NS4xCj4+Cj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPj4gZHJpLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaS1kZXZlbAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
