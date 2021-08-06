Return-Path: <SRS0=27lq=M5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C43CC4338F
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Aug 2021 07:09:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 76610611C9
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Aug 2021 07:09:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 76610611C9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+wRXgsetXximxIZdl8oKT6uzNHD7ErbrMBhABl0Im0Q=; b=C+/zB8uU0jITiov1jXnZNBQJl6
	xY1ZIOVSXY1hTQAlZx9p5k9Q3yeWFjpqCkFLvmhgyD7v8WFe8vHWXZ2g0+gUdMP7aibA/d6rSp21W
	Rnq+U6b8+11AnGydDhdxqvC1YbYhZunGRwO7VF3svDVK2+06Hr9MaKwYHiPbI152vBcyrGBylc0V6
	KK658bHOl/DxVrF7U/XHD4r0F320jBju1giK6sPHXCb91bhUcWnUDX7DgMcphwHH/dgyD5JxemWrQ
	w+kMCSZlnPDK1wC5cENF3vHkhC3hXhnLR1pVCaDSyQHqt+NugamCiPPt6FDKJRNILuQmeBIqV7zID
	Ra/nr5bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBtzA-00Bkyx-7E; Fri, 06 Aug 2021 07:09:40 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBtz7-00BkyT-5o
 for linux-rockchip@lists.infradead.org; Fri, 06 Aug 2021 07:09:39 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 202D91CDF;
 Fri,  6 Aug 2021 15:09:26 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.8] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22194T140002758489856S1628233765777467_; 
 Fri, 06 Aug 2021 15:09:26 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ee26124f85b846229d6d28b4186f93ec>
X-RL-SENDER: david.wu@rock-chips.com
X-SENDER: wdc@rock-chips.com
X-LOGIN-NAME: david.wu@rock-chips.com
X-FST-TO: linux-iio@vger.kernel.org
X-RCPT-COUNT: 11
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH] iio: adc: rockchip_saradc: just get referenced voltage
 once at probe
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>
Cc: Simon Xue <xxm@rock-chips.com>, Jonathan Cameron <jic23@kernel.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
References: <20210802090929.37970-1-xxm@rock-chips.com>
 <20210803135124.000072fe@Huawei.com>
 <8f5385a1-701c-4446-d238-90bee1c03675@rock-chips.com>
 <8912224.VV5PYv0bhD@diego>
From: David Wu <david.wu@rock-chips.com>
Message-ID: <51525056-ee43-1880-5a5b-547decd904f4@rock-chips.com>
Date: Fri, 6 Aug 2021 15:09:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <8912224.VV5PYv0bhD@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_000937_788719_42B25953 
X-CRM114-Status: GOOD (  32.09  )
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

SGkgSGVpa28sIEpvbmF0aGFuCgp3ZSBhcmUgYWRkaW5nIHRoZSBub3RpZmllciBmb3IgdGhpcyBw
YXRjaCwgaW5kZWVkIGZvciBmdXR1cmUgY29uc2lkZXJhdGlvbi4KClRoYW5rcy4KCuWcqCAyMDIx
LzgvNSDkuIvljYg4OjA3LCBIZWlrbyBTdMO8Ym5lciDlhpnpgZM6Cj4gSGkgRGF2aWQsCj4gCj4g
QW0gRG9ubmVyc3RhZywgNS4gQXVndXN0IDIwMjEsIDEzOjU2OjE4IENFU1Qgc2NocmllYiBEYXZp
ZCBXdToKPj4gSGkgSm9uYXRoYW4sCj4+Cj4+IOWcqCAyMDIxLzgvMyDkuIvljYg4OjUxLCBKb25h
dGhhbiBDYW1lcm9uIOWGmemBkzoKPj4+IE9uIFR1ZSwgMyBBdWcgMjAyMSAxMTowOTo0NyArMDgw
MAo+Pj4gRGF2aWQgV3UgPGRhdmlkLnd1QHJvY2stY2hpcHMuY29tPiB3cm90ZToKPj4+Cj4+Pj4g
SGkgSm9uYXRoYW4sCj4+Pj4KPj4+PiDlnKggMjAyMS84LzIg5LiL5Y2INjo0MiwgSm9uYXRoYW4g
Q2FtZXJvbiDlhpnpgZM6Cj4+Pj4+IE9uIE1vbiwgMiBBdWcgMjAyMSAxNzowOToyOSArMDgwMAo+
Pj4+PiBTaW1vbiBYdWUgPHh4bUByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+Pj4+ICAgICAKPj4+
Pj4+IEZyb206IERhdmlkIFd1IDxkYXZpZC53dUByb2NrLWNoaXBzLmNvbT4KPj4+Pj4+Cj4+Pj4+
PiBUaGUgcmVmZXJlbmNlZCB2b2x0YWdlIGlzIG5vdCBjaGFuZ2VkIGFmdGVyIGluaXRpYXRpb24s
IHNvIGp1c3Qgb25seQo+Pj4+Pj4gZ2V0IHJlZmVyZW5jZWQgdm9sdGFnZSBvbmNlLgo+Pj4+PiBI
aSBEYXZpZCwKPj4+Pj4KPj4+Pj4gSXNuJ3QgdGhpcyBhbiBleHRlcm5hbCByZWZlcmVuY2Ugdm9s
dGFnZT8gIElmIHNvIGhvdyBkbyB5b3Uga25vdwo+Pj4+PiBpdCBpcyBub3QgY2hhbmdlZCBhdCBy
dW50aW1lPyAgSXQgbWlnaHQgYmUgdW5saWtlbHkgYW5kIG5vdCBoYXBwZW4KPj4+Pj4gb24gcGFy
dGljdWxhciBwbGF0Zm9ybXMsIGJ1dCB0aGF0J3Mgbm90IGhlIHNhbWUgYXMgc2F5aW5nIGl0IGNh
biBuZXZlcgo+Pj4+PiBoYXBwZW4uICBDbGVhcmx5IGl0J3MgcmFjZXkgYW55d2F5IGlmIHRoYXQg
ZG9lcyBoYXBwZW4sIGJ1dCB3ZSBkZWZpbml0ZWx5Cj4+Pj4+IGRvbid0IGV4cGVjdCBmcmVxdWVu
dCB2b2x0YWdlIGNoYW5nZXMuCj4+Pj4+ICAgICAKPj4+Pgo+Pj4+IFRoZSBjdXJyZW50IHJlZ3Vs
YXRvciBpcyBub3QgY2hhbmdlZCBhbmQgbm90IHN1YmplY3QgdG8gZXh0ZXJuYWwKPj4+PiBjaGFu
Z2VzLCB0aGlzIGNhbiByZWR1Y2UgdGhlIGdldHRpbmcgdm9sdGFnZS4gQXNzdW1pbmcgdGhhdCB0
aGVyZSB3aWxsCj4+Pj4gYmUgY2hhbmdlcyBpbiB0aGUgZnV0dXJlLCB3ZSB0aGVuIGFkZCB0aGUg
bm90aWZ5IG9mIHRoZSByZWd1bGF0b3IsIHNvCj4+Pj4gdGhhdCB0aGUgdm9sdGFnZSBjaGFuZ2Ug
Y2FuIGJlIG9idGFpbmVkLgo+Pj4KPj4+IElmIHRoaXMgcGF0Y2ggYWRkZWQgdGhlIG5vdGlmaWVy
IHRoYXQgd291bGQgYmUgYSBuaWNlIHNvbHV0aW9uLCBidXQKPj4+IHJpZ2h0IG5vdyBpdCBwb3Rl
bnRpYWxseSBpbnRyb2R1Y2VkIGEgcmVncmVzc2lvbi4gWW91IGhhdmUgbWFkZSBtZSBhIGxpdHRs
ZSBjdXJpb3VzLi4uCj4+PiBBcmUgeW91IHNlZWluZyBhIHNpZ25pZmljYW50IGNvc3QgdG8gcXVl
cnlpbmcgdGhhdCByZWd1bGF0b3Igdm9sdGFnZT8KPj4+IElmIHNvLCBJJ2QgaW1hZ2luZSBpdCdz
IGEgbGFjayBvZiBjYWNoaW5nIGluIHRoZSByZWd1bGF0b3IgZHJpdmVyIG9yIHNpbWlsYXIuCj4+
PiBTY2FsZSByZWFkYmFjayB2aWEgc3lzZnMgc2hvdWxkbid0IGJlIGluIGEgZmFzdCBwYXRoIGFu
eXdheS4KPj4+Cj4+PiBZb3UgY2FuJ3QgZGVwZW5kIG9uIHdoYXQgYm9hcmRzIHRvZGF5IGRvLCBi
ZWNhdXNlIHNvbWVvbmUgd2l0aCBhIGJvYXJkCj4+PiBidWlsdCB0b21vcnJvdyBtYXkgd2VsbCB1
c2UgYW4gb2xkIGtlcm5lbCB3aGljaCBzdXBwb3J0cyB0aGUgdm9sdGFnZQo+Pj4gY2hhbmdpbmcs
IGFuZCB0aGVuIHNlZSBhIHJlZ3Jlc3Npb24gd2hlbiB0aGV5IHVwZ3JhZGUgdG8gdGhlIGtlcm5l
bAo+Pj4gY29udGFpbmluZyB0aGlzIHBhdGNoLgo+Pj4KPj4KPj4gRm9yIGFsbCBjdXJyZW50IGNo
aXBzLCB0aGUgZXhwZWN0ZWQgdm9sdGFnZSBpcyBhIGZpeGVkIHZvbHRhZ2UsIGFuZAo+PiBkb24n
dCB3YW50IHRvIGNoYW5nZSBpdCBpbiBhbnkgcHJvY2Vzcy46LSkKPj4KPj4gU28sIGlmIHRoZSB2
b2x0YWdlIGhlcmUgZG9lcyBub3QgY2hhbmdlLCB0aGVuIGl0IGNhbiBiZSBvYnRhaW5lZCBvbmNl
IGluCj4+IHByb2JlKCksIHdoaWNoIGNhbiBzYXZlIHRoZSB0aW1lIG9mIGVhY2ggYWNxdWlzaXRp
b24uIEZvciBleGFtcGxlLCB0aGUKPj4gdm9sdGFnZSBvZiB0aGlzIHJlZ3VsYXRvciBpcyBvYnRh
aW5lZCB0aHJvdWdoIGkyYywgd2hpY2ggd2lsbCBpbmNyZWFzZQo+PiBzb21lIGNvbnN1bXB0aW9u
IGV2ZXJ5IHRpbWUuCj4gCj4gSm9uYXRoYW5zIHJlcXVlc3Qgd2FzIHRvIG5vdCB0aGluayBhYm91
dCAiYWxsIGN1cnJlbnQgY2hpcHMiIGJ1dCB0aGUKPiBnZW5lcmFsIGNhc2UsIGFuZCBhcyBKb25h
dGhhbiBzYWlkLCBhZGRpbmcgdGhhdCByZWd1bGF0b3Igbm90aWZpZXIgeW91Cj4gYWxyZWFkeSBt
ZW50aW9uZWQgd291bGQgYmUgdGhlIG5pY2VzdCBzb2x1dGlvbi4KPiAKPiBTbyBJIHRoaW5rIHRo
ZSBlYXNpZXN0IHdheSBpcyB0byBqdXN0IGFkZCB0aGUgdm9sdGFnZSBub3RpZmllciB0byB5b3Vy
IHBhdGNoCj4gdG8gbWFrZSBldmVyeW9uZSBoYXBweSA7LSkgLgo+IAo+IAo+IEhlaWtvCj4gCj4+
Cj4+PiBKb25hdGhhbgo+Pj4KPj4+Pgo+Pj4+PiBKb25hdGhhbgo+Pj4+PiAgICAgCj4+Pj4+Pgo+
Pj4+Pj4gU2lnbmVkLW9mZi1ieTogU2ltb24gWHVlIDx4eG1Acm9jay1jaGlwcy5jb20+Cj4+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBEYXZpZCBXdSA8ZGF2aWQud3VAcm9jay1jaGlwcy5jb20+Cj4+Pj4+
PiAtLS0KPj4+Pj4+ICAgICBkcml2ZXJzL2lpby9hZGMvcm9ja2NoaXBfc2FyYWRjLmMgfCAxNiAr
KysrKysrKystLS0tLS0tCj4+Pj4+PiAgICAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygr
KSwgNyBkZWxldGlvbnMoLSkKPj4+Pj4+Cj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8v
YWRjL3JvY2tjaGlwX3NhcmFkYy5jIGIvZHJpdmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5j
Cj4+Pj4+PiBpbmRleCBmM2ViOGQyZTUwZGMuLmNkMzNjMGI5ZDNlYiAxMDA2NDQKPj4+Pj4+IC0t
LSBhL2RyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYwo+Pj4+Pj4gKysrIGIvZHJpdmVy
cy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5jCj4+Pj4+PiBAQCAtNDksNiArNDksNyBAQCBzdHJ1
Y3Qgcm9ja2NoaXBfc2FyYWRjIHsKPj4+Pj4+ICAgICAJc3RydWN0IGNsawkJKmNsazsKPj4+Pj4+
ICAgICAJc3RydWN0IGNvbXBsZXRpb24JY29tcGxldGlvbjsKPj4+Pj4+ICAgICAJc3RydWN0IHJl
Z3VsYXRvcgkqdnJlZjsKPj4+Pj4+ICsJaW50CQkJdXZfdnJlZjsKPj4+Pj4+ICAgICAJc3RydWN0
IHJlc2V0X2NvbnRyb2wJKnJlc2V0Owo+Pj4+Pj4gICAgIAljb25zdCBzdHJ1Y3Qgcm9ja2NoaXBf
c2FyYWRjX2RhdGEgKmRhdGE7Cj4+Pj4+PiAgICAgCXUxNgkJCWxhc3RfdmFsOwo+Pj4+Pj4gQEAg
LTEwNSwxMyArMTA2LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9zYXJhZGNfcmVhZF9yYXcoc3Ry
dWN0IGlpb19kZXYgKmluZGlvX2RldiwKPj4+Pj4+ICAgICAJCW11dGV4X3VubG9jaygmaW5kaW9f
ZGV2LT5tbG9jayk7Cj4+Pj4+PiAgICAgCQlyZXR1cm4gSUlPX1ZBTF9JTlQ7Cj4+Pj4+PiAgICAg
CWNhc2UgSUlPX0NIQU5fSU5GT19TQ0FMRToKPj4+Pj4+IC0JCXJldCA9IHJlZ3VsYXRvcl9nZXRf
dm9sdGFnZShpbmZvLT52cmVmKTsKPj4+Pj4+IC0JCWlmIChyZXQgPCAwKSB7Cj4+Pj4+PiAtCQkJ
ZGV2X2VycigmaW5kaW9fZGV2LT5kZXYsICJmYWlsZWQgdG8gZ2V0IHZvbHRhZ2VcbiIpOwo+Pj4+
Pj4gLQkJCXJldHVybiByZXQ7Cj4+Pj4+PiAtCQl9Cj4+Pj4+PiAtCj4+Pj4+PiAtCQkqdmFsID0g
cmV0IC8gMTAwMDsKPj4+Pj4+ICsJCSp2YWwgPSBpbmZvLT51dl92cmVmIC8gMTAwMDsKPj4+Pj4+
ICAgICAJCSp2YWwyID0gY2hhbi0+c2Nhbl90eXBlLnJlYWxiaXRzOwo+Pj4+Pj4gICAgIAkJcmV0
dXJuIElJT19WQUxfRlJBQ1RJT05BTF9MT0cyOwo+Pj4+Pj4gICAgIAlkZWZhdWx0Ogo+Pj4+Pj4g
QEAgLTQxMCw2ICs0MDUsMTMgQEAgc3RhdGljIGludCByb2NrY2hpcF9zYXJhZGNfcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+Pj4+ICAgICAJCXJldHVybiByZXQ7Cj4+Pj4+
PiAgICAgCX0KPj4+Pj4+ICAgICAKPj4+Pj4+ICsJaW5mby0+dXZfdnJlZiA9IHJlZ3VsYXRvcl9n
ZXRfdm9sdGFnZShpbmZvLT52cmVmKTsKPj4+Pj4+ICsJaWYgKGluZm8tPnV2X3ZyZWYgPCAwKSB7
Cj4+Pj4+PiArCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJmYWlsZWQgdG8gZ2V0IHZvbHRhZ2VcbiIp
Owo+Pj4+Pj4gKwkJcmV0ID0gaW5mby0+dXZfdnJlZjsKPj4+Pj4+ICsJCXJldHVybiByZXQ7Cj4+
Pj4+PiArCX0KPj4+Pj4+ICsKPj4+Pj4+ICAgICAJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGlu
Zm8tPnBjbGspOwo+Pj4+Pj4gICAgIAlpZiAocmV0IDwgMCkgewo+Pj4+Pj4gICAgIAkJZGV2X2Vy
cigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBwY2xrXG4iKTsKPj4+Pj4KPj4+Pj4KPj4+
Pj4KPj4+Pj4gICAgIAo+Pj4+Cj4+Pj4KPj4+Cj4+Pgo+Pj4KPj4+Cj4+Cj4+Cj4+Cj4gCj4gCj4g
Cj4gCj4gCj4gCj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
