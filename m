Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 300DBCD4F49
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 05:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFVUhNdC3Sn3z9o1ZpP5FOLKEC1B8kyTUv5tCDJgKSs=; b=uzIh4NGN1Y6P16
	GG+9cbeh93S0dEZxyf0z9h1oO5gMaxqDVZUHfkFH0i9Qwqa2BsLCUgBM6FO8ygllKVzt10+JVcb1c
	A3xrAoPHdK8UJ0pKTuZF13S2VAlZ0gymr3LPkvWEv/jyVX8dERjNlGL0UWLYeCOWB9TdEmhSq0DFa
	cE3h5IBdbePUGZLocjpnaWW/ZPJcU/XeLWjygXNUbCrnpcpE8sufiOUsCbNX6yvGFBh2qsGyWtit0
	Yd3cXXxVB1LvM3WWWW7/W2ecb0D0MA1KQWC8Ymchy8p/+QaOvAp37JWKKx/a0BZrNPYQDI585WoYd
	F4xOeElu3NGEWraSodfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJlyz-0000000Ba72-0ywU;
	Fri, 14 Nov 2025 05:04:25 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJlyv-0000000Ba5u-2nmF
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 05:04:23 +0000
X-QQ-mid: zesmtpip3t1763096603tf54f4cf2
X-QQ-Originating-IP: yXxhx67R4Ql4rWCq44yALQ92mPTELLKqhVcUOtbJ4uI=
Received: from [IPV6:240f:10b:7440:1:1ea:c5f5: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 14 Nov 2025 13:03:20 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14970421709941988866
Message-ID: <F02BA2E6B1111826+2445b38d-b5e0-499c-83e7-4521c57b2210@radxa.com>
Date: Fri, 14 Nov 2025 14:03:20 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: Joseph Kogut <joseph.kogut@gmail.com>, Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
 honyuenkwun@gmail.com, quentin.schulz@cherry.de, pbrobinson@gmail.com,
 amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
 <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
 <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: NCDk2ZLQrX9GpwuJao7ZFTlIzCwIFQGF/GOa2HB8fyReF6DsQaAWD0cV
	6cVrxmOuMpG6AYETOQqF/502x+BZRoNBpJfMTijteaFfaDl3hXOQBmQgwaIi0ztZl1b6/2Y
	xL9HX4JjKKlw4iyQ2vu7BsZPIDNR5e4OOoAgoyxczw7xnD2CIcoCUszI5CR5Z6/LowTfV53
	NYqTrjndpSJZ4lMpmKnMBOPRFNmRGr2a2gIOqHEVTfJha7Ry9SHDBqkx/mCQPhmIa+uVDnS
	e7oNF0+Fe26fQYoIAkQDpDgwo0umNj/vpunVpXoQ09Tpbd8o4KqmEwJdgo/QGsAasGgFX0w
	vndO3PvnuEREIL0pwWk2JVKfuwWJ1pFn60AZ9GO+4E6WYfyuzoNvT8D/TaTD52IGfl5QOfb
	KM4bAVIo2cWTfQUIrJ6uN8rcBL8Jc38k8q0sKGwnxF90Yzwi36bYlp5YeFWnpXJgL0XE1MD
	+WRFuSKxGH7CDHxSoIXVRbOxQUGneOhwiLR6uZn278AD9rKo8aPDWOtKgWxqnexSh+bbRuk
	6XXYzuaku9iQDyClrtHOkzLNnAtkL0a3mc4xXTgd0jTcRfnGBVMP10cdm2ZdlB/z9URcxHm
	CAbaBaI6c8OUH8mBSr5Kf77Qd7Z8v8iuy9RPEkzlR1CHsAOtJskQ8rqwuUNqL+Qu3VT/ZK1
	U3VZSBSVSMr+44K/JZSwwXNvY2EWnhK79/0W+RgUsA5xKozDa5p5/IhFb9vpuvdzC4PEP3d
	S1GPQe+4ho1CzPOJoJNAFMrj3fMCwj6ZNH181Jv49/pQLPz9J+XQAAwUxrU3dmbLxfruJnb
	/yN9T7ofdFhAoRgyEk6hFoK/+IRnApzDOjUmys3C7vxPOOEQezaPBGGozmA0htdWYpCKC8p
	mkq83z7+cNdiN/CyOaulrTgHdqjmSoNVqEkU2Ct3gv81Ne+0WPtxRJuzoOTjmvKGFzMBXUq
	ivlqwm2JBHZc6ft5FwCss+QJ+QNkTKz5h0u210/0ZKa2Ld86VlJ0FVpTwkUbA/OgRAjeq/Z
	dUrwPFPwW3xMVJlhzKLAKLrGWNOzFSLnNM26V2fGjvbMIAsg+j
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_210422_063063_4FC3C7AC 
X-CRM114-Status: GOOD (  22.89  )
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

SGkgRHJhZ2FuLCBKb3NlcGgsCgpPbiAxMS8xMi8yNSAwOTo0NiwgRHJhZ2FuIFNpbWljIHdyb3Rl
Ogo+IEhlbGxvIE5hb2tpLAo+IAo+IE9uIFdlZG5lc2RheSwgTm92ZW1iZXIgMTIsIDIwMjUgMDA6
MjYgQ0VULCBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+IHdyb3RlOgo+PiBPbiAxMS8x
MS8yNSAyMzozMywgRHJhZ2FuIFNpbWljIHdyb3RlOgo+Pj4gT24gVHVlc2RheSwgTm92ZW1iZXIg
MTEsIDIwMjUgMTI6NTIgQ0VULCBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+IHdyb3Rl
Ogo+Pj4+IE9uIDExLzYvMjUgMDI6NDgsIEpvc2VwaCBLb2d1dCB3cm90ZToKPj4+Pj4gT24gV2Vk
LCBOb3YgNSwgMjAyNSBhdCA0OjE14oCvQU0gRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29t
PiB3cm90ZToKPj4+Pj4+IEknZCBsaWtlIHRvIGNsYXJpZnkgdGhlIHNpdHVhdGlvbiByZWdhcmRp
bmcgdGhlIHY2IHBhdGNoIHNlcmllcyBJIHN1Ym1pdHRlZC4KPj4+Pj4+Cj4+Pj4+PiBUaGUgb3Jp
Z2luYWwgZGV2aWNlIHRyZWUgd29yayBmb3IgdGhlIFJhZHhhIENNNSBhbmQgSU8gQm9hcmQgd2Fz
Cj4+Pj4+PiBhdXRob3JlZCBieSBKb3NlcGggS29ndXQuIEkgdG9vayBvdmVyIHRoZSByZXNwb25z
aWJpbGl0eSBvZiBnZXR0aW5nIGl0Cj4+Pj4+PiB1cHN0cmVhbWVkIHdpdGggaGlzIGFncmVlbWVu
dC4KPj4+Pj4KPj4+Pj4gSSdsbCBjb25maXJtIHRoaXMuIEkndmUgYmVlbiBpbiBjb21tdW5pY2F0
aW9uIHdpdGggTmFva2kuIFRoZXkgbWFkZSBhCj4+Pj4+IGxhcmdlIG51bWJlciBvZiByZXZpc2lv
bnMgdG8gbXkgb3JpZ2luYWwgcGF0Y2ggc2VyaWVzLCB3aGljaCBJIHRoaW5rCj4+Pj4+IGhhdmUg
dGVjaG5pY2FsIG1lcml0LiBJIHN1Z2dlc3RlZCB0aGV5IHN1Ym1pdCB0aGUgcGF0Y2hlcyB0aGVt
c2VsdmVzLAo+Pj4+PiBhbmQgZ2F2ZSB0aGVtIGV4cGxpY2l0IHBlcm1pc3Npb24gdG8gYWRkIG15
IFNpZ25lZC1vZmYtYnkgYW5kIENDIG1lLgo+Pj4+Pgo+Pj4+PiBJIGFzc3VtZSB0aGlzIHdhcyB0
aGUgY29ycmVjdCB3YXkgZm9yIHRoZW0gdG8gY29udGludWUgdGhlIHdvcmsgSQo+Pj4+PiBzdGFy
dGVkLCBidXQgaWYgbm90LCBwbGVhc2UgbGV0IHVzIGtub3cgdGhlIGJlc3Qgd2F5IHRvIHByb2Nl
ZWQuCj4+Pj4KPj4+PiBDYW4gYW55b25lIGhlbHAgdXM/Cj4+Pgo+Pj4gSSdtIG5vdCBleGFjdGx5
IHN1cmUgaG93IHRvIHJlc29sdmUgdGhlIGN1cnJlbnQgc2l0dWF0aW9uLCBidXQgZm9yCj4+PiBT
aWduZWQtb2ZmLWJ5IHRhZ3MgdG8gYmUgcHJlc2VudCwgaW4gdGhpcyBjYXNlIHlvdSdkIG5lZWQg
dG8gaGF2ZQo+Pj4gQ28tZGV2ZWxvcGVkLWJ5IHRhZ3MgYXMgd2VsbCwgYmVjYXVzZSB0aGUgZmlu
YWwgcGF0Y2ggdmVyc2lvbnMsCj4+PiB3aGljaCB3b3VsZCBiZSBzdWJtaXR0ZWQgYnkgTmFva2ks
IHdvdWxkIGRpZmZlciBzaWduaWZpY2FudGx5IGZyb20KPj4+IHRoZSB2ZXJzaW9ucyB0aGF0IEpv
c2VwaCBhY3RpdmVseSB3b3JrZWQgb24sIGlmIEkgdW5kZXJzdG9vZAo+Pj4gZXZlcnl0aGluZyBj
b3JyZWN0bHkuICBUaG91Z2gsIGZvciBKb3NlcGgncyBTaWduZWQtb2ZmLWJ5IHRhZ3MgdG8KPj4+
IGJlIGluY2x1ZGVkIHRoZXJlLCBoZSB3b3VsZCBhbHNvIG5lZWQgdG8gcGFydGljaXBhdGUgYWN0
aXZlbHkgaW4KPj4+IHRoZSBkZXZlbG9wbWVudCBvZiB0aGUgZmluYWwgcGF0Y2ggdmVyc2lvbnMu
Cj4+Cj4+IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3Mvc3Vi
bWl0dGluZy1wYXRjaGVzLmh0bWwjd2hlbi10by11c2UtYWNrZWQtYnktY2MtYW5kLWNvLWRldmVs
b3BlZC1ieQo+Pgo+PiBJZgo+PiAtLS0tCj4+IEZyb206IEpvc2VwaCBLb2d1dCA8am9zZXBoLmtv
Z3V0QGdtYWlsLmNvbT4KPj4KPj4gPGNoYW5nZWxvZz4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSm9z
ZXBoIEtvZ3V0IDxqb3NlcGgua29ndXRAZ21haWwuY29tPgo+PiBDby1kZXZlbG9wZWQtYnk6IEZV
S0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBO
YW9raSA8bmFva2lAcmFkeGEuY29tPgo+PiAtLS0tCj4+IHRoZW4gSSBjYW4gc3VibWl0IG15IHBh
dGNoIHNlcmllcz8KPiAKPiBBY3R1YWxseSwgdGhlIENvLWRldmVsb3BlZC1ieSB0YWdzIHdvdWxk
IGJlIHBvaW50aW5nIHRvIEpvc2VwaAo+IGluIHRoYXQgY2FzZSwgYnV0IGFzIEkgZGVzY3JpYmVk
IGl0IGFib3ZlLCB0aGlzIGFwcHJvYWNoIGJhc2ljYWxseQo+IGNhbm5vdCBiZSB1c2VkLCBiZWNh
dXNlIEpvc2VwaCdzIG9yaWdpbmFsIHdvcmsgZGlmZmVycyBhIGxvdCBmcm9tCj4gd2hhdCB5b3Un
ZCBhY3R1YWxseSBzdWJtaXQgdG8gdGhlIG1haWxpbmcgbGlzdChzKS4KPiAKPj4gT3IsCj4+Cj4+
PiBBbm90aGVyIG9wdGlvbiwgdGVjaG5pY2FsbHkgYSBiaXQgc2ltcGxlciwgd291bGQgYmUgdG8g
aW5jbHVkZSBqdXN0Cj4+PiBPcmlnaW5hbGx5LWJ5IHRhZ3MgZm9yIEpvc2VwaCwgd2hpY2ggd291
bGQgaW5kaWNhdGUgdGhhdCBKb3NlcGggZ2F2ZQo+Pj4gdXAgb24gdGhlIGRldmVsb3BtZW50IG9m
IHRoZSBwYXRjaGVzIGFuZCBoYW5kZWQgdGhlbSBvdmVyIHRvIE5hb2tpCj4+PiBmb3IgZnV0dXJl
IGRldmVsb3BtZW50IGFuZCBzdWJtaXNzaW9uIHRvIHRoZSBtYWlsaW5nIGxpc3RzLiBUaG91Z2gs
Cj4+PiB0aGF0IHdvdWxkIHJlcXVpcmUgSm9zZXBoIHRvIHB1YmxpY2x5IHN0YXRlIGV4YWN0bHkg
dGhhdC4KPj4KPj4gSSBjYW5ub3QgZmluZCBhbnkgZG9jdW1lbnRhdGlvbiBhYm91dCAiT3JpZ2lu
YWxseS1ieSIuCj4+IElzIHRoaXMgY29ycmVjdD8KPj4gLS0tLQo+PiA8Y2hhbmdlbG9nPgo+Pgo+
PiBPcmlnaW5hbGx5LWJ5OiBKb3NlcGggS29ndXQgPGpvc2VwaC5rb2d1dEBnbWFpbC5jb20+Cj4+
IFNpZ25lZC1vZmYtYnk6IEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4KPj4gLS0tLQo+
IAo+IFRoYXQgYXBwcm9hY2ggaXMgdGhlIG9ubHkgSSBzZWUgYXBwbGljYWJsZSBpbiB0aGlzIGNh
c2UuICBIb3dldmVyLAo+IGxldCdzIGhlYXIgb3BpbmlvbnMgZnJvbSBvdGhlciBwZW9wbGUgYXMg
d2VsbC4KCkkgc2VlLiBJIHdhbnQgdG8gZG8gdGhpcyBhcHByb2FjaC4KCkpvc2VwaCwgY291bGQg
eW91IGdpdmUgbWUgYSBzdGF0ZW1lbnQgdG8gZG8gdGhpcz8KCi0tCkZVS0FVTUkgTmFva2kKUmFk
eGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4sIEx0ZC4KCj4gQnkgdGhlIHdheSwgd2hhdCB5b3Ug
Y2FsbGVkIGNoYW5nZWxvZ3MgaW4gdGhlIGV4YW1wbGVzIGFib3ZlIGlzCj4gdXN1YWxseSBjYWxs
ZWQgcGF0Y2ggZGVzY3JpcHRpb25zLiAgV2hlbiB0aGV5IGJlY29tZSBtZXJnZWQsIHRoZXkKPiBi
ZWNvbWUgY2FsbGVkIGNvbW1pdCBkZXNjcmlwdGlvbnMgb3IsIHNvbWV0aW1lcywgY29tbWl0IG1l
c3NhZ2VzLgo+IFVzaW5nIHRoZSBzdGFuZGFyZCBsaW5nbyB1c3VhbGx5IGhlbHBzLiA6KQo+IAo+
IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
