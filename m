Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5744CCFA1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 23:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7Adn4zaIM3bBUieg6r5O85sda+ZnGiDMxCxCm+tgtQ=; b=QEBLpSw7O+c7xM
	vj8Vc4aqQbatX2WO2aXmYm6FmUp1jg6hLxMHWobNu8vNlZLnsq771QEZmt+E0KWPZ8U6CsBnMg4Yt
	mzjmRBss2WItURFV/6FoD23bSBVtbXXx9BuqI/0NA6vxp4YzaBXoQISaakkRK2nebFT5VK1LuZm79
	OI1U8DpK8HDwOjFGOBlVkQPFYuVw1ygR3cKJzESqbjd5DyoFQTIq/9P9L68dRGntxsrvPpEnHhNsB
	DRwysZ7CL3UMpHZgO+TTxqQ53AxywHY/VfWu6j9xKqrPhh7+tDHaLcQ2XZomyBr79wILpg5BAO98C
	eJSiMskXIGzl0vWxCKpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIxmO-00000007sce-0T4b;
	Tue, 11 Nov 2025 23:28:04 +0000
Received: from smtpbgbr1.qq.com ([54.207.19.206])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIxmL-00000007sbN-1qXw
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 23:28:03 +0000
X-QQ-mid: zesmtpip3t1762903615t82afb619
X-QQ-Originating-IP: GxSOz8m4pUuf5yJc/YFgisTpIHHzieLlbtJIzItwdMs=
Received: from [IPV6:240f:10b:7440:1:16e6:e9c9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 12 Nov 2025 07:26:51 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7311237971037193580
Message-ID: <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
Date: Wed, 12 Nov 2025 08:26:50 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: Dragan Simic <dsimic@manjaro.org>
Cc: Joseph Kogut <joseph.kogut@gmail.com>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, honyuenkwun@gmail.com, quentin.schulz@cherry.de,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: OUC5DGN0mB58TJ3cMJvSbLtHWYTA4BULqq03NAUXQqkdedvbTJqIHteT
	DnY21sCmAgpXooxf3t5+DtIuNH1pSdWrgxXH1wr5QO28VT1LYv/JKn8EhDMUZQMfpMei4Jq
	yh0FZdgwS9MQvCq5CnYbdU7l6cF0Ibh6MKPReIzVYW0RWOmOxX1gzo2c854X9Djz/unLWpF
	4/v/xiBiHB/Ag3tDdVuu62hHEZXrjP74ymIyshTpdW5M6FCunLPa4yk7VSHDjGdtll2jLJJ
	LTjVA5b5pIWH+va/elglAbtYWZI5BOmzVUTuDW1B1OQs14e8F3dJ9+X6NcsT5X/pmnuhWG9
	XEE812sPW7CK1pKKsWC9LhNkO5EbEPrj7vsi+omPisucBF2+mnmUECjQcNZhPLtkKLdjiBG
	6dObZCSx8OPbsUA2IIuk2YezEh9q8nipDSvb+1TcNz4XrgWhJibaos/jeNTY3IUAdAzhnWf
	37Owhrn5qPWysBbsxIVAl5NwzEx4f+CNNylLgl6C2xCRDafYIAx6JeoXtlzq0MEcJRvMLCz
	q5v2+w/U2hTRZIzfpUAb3TRG1wpx+sCXwDE5GLOSo8KqMR32HXLWI6NhPfCB5hpsMny0u+M
	eOFeo86V2rWvAoWnIeyuNQc+i3dlNLcFRZVAZh7Pd8nxIQzaQSeyVBV9RL4/CsE3JsvWK+A
	DPli47LU6bGMafKYCBoteRwmYKAXPTuGAM5bLRp9/OHpz5zqN8IRCDJyjTAubTIbBAmusGp
	E2xKtrOETvgCabi1yL/fS6XG0Mp88k65XC3g5FXW8buHqVIDf8baW0vFYITQWLiQUqklcKr
	xq5X08n3kojOi0xD1y5SWnl9gIaW+YGExkfN8xG5TCc2FF1WqwH8bzkilu+kngMul6BoCGb
	NTOBM7M1tmoYCmDdo9U4TrepJMoYmFssYViIeU1a/1DLC1RFSRRUNnyrMlRNRnMa7yLjfeY
	gVpd2wYcakNZx2TElOCzJWxDhdtRxHoWGdQAb/bYmFfeqMN2Uw5L1S9ED
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_152802_336128_C0A09393 
X-CRM114-Status: GOOD (  19.69  )
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

SGkgRHJhZ2FuLCBKb3NlcGgsCgpPbiAxMS8xMS8yNSAyMzozMywgRHJhZ2FuIFNpbWljIHdyb3Rl
Ogo+IEhlbGxvIGFsbCwKPiAKPiBPbiBUdWVzZGF5LCBOb3ZlbWJlciAxMSwgMjAyNSAxMjo1MiBD
RVQsIEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4gd3JvdGU6Cj4+IE9uIDExLzYvMjUg
MDI6NDgsIEpvc2VwaCBLb2d1dCB3cm90ZToKPj4+IE9uIFdlZCwgTm92IDUsIDIwMjUgYXQgNDox
NeKAr0FNIEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4gd3JvdGU6Cj4+Pj4gSSdkIGxp
a2UgdG8gY2xhcmlmeSB0aGUgc2l0dWF0aW9uIHJlZ2FyZGluZyB0aGUgdjYgcGF0Y2ggc2VyaWVz
IEkgc3VibWl0dGVkLgo+Pj4+Cj4+Pj4gVGhlIG9yaWdpbmFsIGRldmljZSB0cmVlIHdvcmsgZm9y
IHRoZSBSYWR4YSBDTTUgYW5kIElPIEJvYXJkIHdhcwo+Pj4+IGF1dGhvcmVkIGJ5IEpvc2VwaCBL
b2d1dC4gSSB0b29rIG92ZXIgdGhlIHJlc3BvbnNpYmlsaXR5IG9mIGdldHRpbmcgaXQKPj4+PiB1
cHN0cmVhbWVkIHdpdGggaGlzIGFncmVlbWVudC4KPj4+Cj4+PiBJJ2xsIGNvbmZpcm0gdGhpcy4g
SSd2ZSBiZWVuIGluIGNvbW11bmljYXRpb24gd2l0aCBOYW9raS4gVGhleSBtYWRlIGEKPj4+IGxh
cmdlIG51bWJlciBvZiByZXZpc2lvbnMgdG8gbXkgb3JpZ2luYWwgcGF0Y2ggc2VyaWVzLCB3aGlj
aCBJIHRoaW5rCj4+PiBoYXZlIHRlY2huaWNhbCBtZXJpdC4gSSBzdWdnZXN0ZWQgdGhleSBzdWJt
aXQgdGhlIHBhdGNoZXMgdGhlbXNlbHZlcywKPj4+IGFuZCBnYXZlIHRoZW0gZXhwbGljaXQgcGVy
bWlzc2lvbiB0byBhZGQgbXkgU2lnbmVkLW9mZi1ieSBhbmQgQ0MgbWUuCj4+Pgo+Pj4gSSBhc3N1
bWUgdGhpcyB3YXMgdGhlIGNvcnJlY3Qgd2F5IGZvciB0aGVtIHRvIGNvbnRpbnVlIHRoZSB3b3Jr
IEkKPj4+IHN0YXJ0ZWQsIGJ1dCBpZiBub3QsIHBsZWFzZSBsZXQgdXMga25vdyB0aGUgYmVzdCB3
YXkgdG8gcHJvY2VlZC4KPj4KPj4gQ2FuIGFueW9uZSBoZWxwIHVzPwo+IAo+IEknbSBub3QgZXhh
Y3RseSBzdXJlIGhvdyB0byByZXNvbHZlIHRoZSBjdXJyZW50IHNpdHVhdGlvbiwgYnV0IGZvcgo+
IFNpZ25lZC1vZmYtYnkgdGFncyB0byBiZSBwcmVzZW50LCBpbiB0aGlzIGNhc2UgeW91J2QgbmVl
ZCB0byBoYXZlCj4gQ28tZGV2ZWxvcGVkLWJ5IHRhZ3MgYXMgd2VsbCwgYmVjYXVzZSB0aGUgZmlu
YWwgcGF0Y2ggdmVyc2lvbnMsCj4gd2hpY2ggd291bGQgYmUgc3VibWl0dGVkIGJ5IE5hb2tpLCB3
b3VsZCBkaWZmZXIgc2lnbmlmaWNhbnRseSBmcm9tCj4gdGhlIHZlcnNpb25zIHRoYXQgSm9zZXBo
IGFjdGl2ZWx5IHdvcmtlZCBvbiwgaWYgSSB1bmRlcnN0b29kCj4gZXZlcnl0aGluZyBjb3JyZWN0
bHkuICBUaG91Z2gsIGZvciBKb3NlcGgncyBTaWduZWQtb2ZmLWJ5IHRhZ3MgdG8KPiBiZSBpbmNs
dWRlZCB0aGVyZSwgaGUgd291bGQgYWxzbyBuZWVkIHRvIHBhcnRpY2lwYXRlIGFjdGl2ZWx5IGlu
Cj4gdGhlIGRldmVsb3BtZW50IG9mIHRoZSBmaW5hbCBwYXRjaCB2ZXJzaW9ucy4KCmh0dHBzOi8v
d3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVz
Lmh0bWwjd2hlbi10by11c2UtYWNrZWQtYnktY2MtYW5kLWNvLWRldmVsb3BlZC1ieQoKSWYKLS0t
LQpGcm9tOiBKb3NlcGggS29ndXQgPGpvc2VwaC5rb2d1dEBnbWFpbC5jb20+Cgo8Y2hhbmdlbG9n
PgoKU2lnbmVkLW9mZi1ieTogSm9zZXBoIEtvZ3V0IDxqb3NlcGgua29ndXRAZ21haWwuY29tPgpD
by1kZXZlbG9wZWQtYnk6IEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4KU2lnbmVkLW9m
Zi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPgotLS0tCnRoZW4gSSBjYW4gc3Vi
bWl0IG15IHBhdGNoIHNlcmllcz8KCk9yLAoKPiBBbm90aGVyIG9wdGlvbiwgdGVjaG5pY2FsbHkg
YSBiaXQgc2ltcGxlciwgd291bGQgYmUgdG8gaW5jbHVkZSBqdXN0Cj4gT3JpZ2luYWxseS1ieSB0
YWdzIGZvciBKb3NlcGgsIHdoaWNoIHdvdWxkIGluZGljYXRlIHRoYXQgSm9zZXBoIGdhdmUKPiB1
cCBvbiB0aGUgZGV2ZWxvcG1lbnQgb2YgdGhlIHBhdGNoZXMgYW5kIGhhbmRlZCB0aGVtIG92ZXIg
dG8gTmFva2kKPiBmb3IgZnV0dXJlIGRldmVsb3BtZW50IGFuZCBzdWJtaXNzaW9uIHRvIHRoZSBt
YWlsaW5nIGxpc3RzLiBUaG91Z2gsCj4gdGhhdCB3b3VsZCByZXF1aXJlIEpvc2VwaCB0byBwdWJs
aWNseSBzdGF0ZSBleGFjdGx5IHRoYXQuCgpJIGNhbm5vdCBmaW5kIGFueSBkb2N1bWVudGF0aW9u
IGFib3V0ICJPcmlnaW5hbGx5LWJ5Ii4KSXMgdGhpcyBjb3JyZWN0PwotLS0tCjxjaGFuZ2Vsb2c+
CgpPcmlnaW5hbGx5LWJ5OiBKb3NlcGggS29ndXQgPGpvc2VwaC5rb2d1dEBnbWFpbC5jb20+ClNp
Z25lZC1vZmYtYnk6IEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4KLS0tLQoKQmVzdCBy
ZWdhcmRzLAoKLS0KRlVLQVVNSSBOYW9raQpSYWR4YSBDb21wdXRlciAoU2hlbnpoZW4pIENvLiwg
THRkLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
