Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02B40C021A9
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Feb 2025 20:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LC92wHev+BNbBMaugfazGn+s4mqTAhQJs5luAF+cZLI=; b=vhvC8tnWjBHVfg
	5sjNHM+dJiD5rSpIZzXuio6072plVlKNEFMipHGvBB4p6lMIdKfDFtgWyQc8MYcK6P41+UwYTIlLe
	tO/Z7jqM405UyJfnpa2+8iRw2dAqWKFGcTSm/wTKw26if9cyK6EP/ekRD9T7FEkLukuwdIVftOGXQ
	fcwwnPoCazLwcHoaSaUXNWrRXP7hn1l573CqCwSSoL6SnINnfcp/dmyFukCegTw5TISzOPfcu6dGs
	jCe6WdpZSwdE05DTNCz+D1ES9EAr50Fi67KSJdWV5bkCiV61npRaRJTWkkzC/vtPlN/EH+GHYxivD
	s2CvphXYf+bXD+E4+N6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk858-00000005wvR-3BQZ;
	Mon, 17 Feb 2025 20:51:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk856-00000005wuv-0eQV
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Feb 2025 20:51:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=IXt480Abf0JotZYaVu+nX5d1RPwKRi9f0QFxpN31t9o=; b=1HrXNtcEjiR4bI/hrUHfyTpuhJ
	JT2f8Hm5aC5Y/0l7nCoyzBbotkZhQ7OROX38ne58/OFkBnRPaSeXptNjbhwlw1D4o6uqn7Ez0QTwI
	Amcl3Y0SrStBGHHF9206aYqM2BlWfISLru8f6p7nqxKlBKA8TQZZQRA5nsVxe/vruEt3iYDoLECzQ
	0l+zVtVQX07NQT/ev66Ym2F5SXmnt1oL6J6HiCk0SKPICdWg4x+fxBugyxONOFRFv+L22cYjlVgBl
	+xOzIRAWIDC/hT9Z8L59yh79gpowPwq7xVF68zLODFHni7MLvIhhQnFqQCEsOhCsvXQGElyMsf4lk
	+TAGLl9w==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tk84i-0007CW-1Y; Mon, 17 Feb 2025 21:50:44 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Steven Price <steven.price@arm.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: Re: [PATCH v7 4/7] pmdomain: rockchip: Add smc call to inform firmware
Date: Mon, 17 Feb 2025 21:50:42 +0100
Message-ID: <5649637.F8r316W7xa@diego>
In-Reply-To: <321804ef-f852-47cf-afd7-723666ec8f62@arm.com>
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
 <2579724.BzM5BlMlMQ@diego> <321804ef-f852-47cf-afd7-723666ec8f62@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_125108_218234_8178DF90 
X-CRM114-Status: GOOD (  24.90  )
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

QW0gTW9udGFnLCAxNy4gRmVicnVhciAyMDI1LCAxODoxMDozMiBNRVogc2NocmllYiBTdGV2ZW4g
UHJpY2U6Cj4gT24gMTcvMDIvMjAyNSAxNToxNiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gPiBI
aSBTdGV2ZW4sCj4gPiAKPiA+IEFtIE1vbnRhZywgMTcuIEZlYnJ1YXIgMjAyNSwgMTU6NDc6MjEg
TUVaIHNjaHJpZWIgU3RldmVuIFByaWNlOgo+ID4+IE9uIDA1LzAyLzIwMjUgMDY6MTUsIFNoYXdu
IExpbiB3cm90ZToKPiA+Pj4gSW5mb3JtIGZpcm13YXJlIHRvIGtlZXAgdGhlIHBvd2VyIGRvbWFp
biBvbiBvciBvZmYuCj4gPj4+Cj4gPj4+IFN1Z2dlc3RlZC1ieTogVWxmIEhhbnNzb24gPHVsZi5o
YW5zc29uQGxpbmFyby5vcmc+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24u
bGluQHJvY2stY2hpcHMuY29tPgo+ID4+PiAtLS0KPiA+Pgo+ID4+IFRoaXMgcGF0Y2ggaXMgY2F1
c2luZyBteSBGaXJlZmx5IFJLMzI4OCB0byBmYWlsIHRvIGJvb3QsIGl0IGhhbmdzIAo+ID4+IHNo
b3J0bHkgYWZ0ZXIgcmVhY2hpbmcgdXNlciBzcGFjZSwgYnV0IHRoZSBib290dXAgbWVzc2FnZXMg
aW5jbHVkZSB0aGUgCj4gPj4gc3VzcGljaW91cyBsaW5lICJCYWQgbW9kZSBpbiBwcmVmZXRjaCBh
Ym9ydCBoYW5kbGVyIGRldGVjdGVkIi4KPiA+PiBJIHN1c3BlY3QgdGhlIGZpcm13YXJlIG9uIHRo
aXMgYm9hcmQgZG9lc24ndCBzdXBwb3J0IHRoaXMgbmV3IFNNQyAKPiA+PiBjb3JyZWN0bHkuIFJl
dmVydGluZyB0aGlzIHBhdGNoIG9uIHRvcCBvZiBsaW51eC1uZXh0IGdldHMgZXZlcnl0aGluZyAK
PiA+PiB3b3JraW5nIGFnYWluLgo+ID4gCj4gPiBJcyB5b3VyIGJvYXJkIGFjdHVhbGx5IHJ1bm5p
bmcgc29tZSB0cnVzdGVkIGZpcm13YXJlPwo+IAo+IE5vdCBhcyBmYXIgYXMgSSBrbm93Lgo+IAo+
ID4gU3RvY2sgcmszMjg4IG5ldmVyIGhhZCB0Zi1hIC8gcHNjaSBbMF0sIEkgZGlkIHdvcmsgb24g
dGhhdCBmb3IgYSB3aGlsZSwKPiA+IGJ1dCBkb24ndCB0aGluayB0aGF0IGV2ZXIgdG9vayBvZmYu
Cj4gPiAKPiA+IEknbSB3b25kZXJpbmcgd2hvIHRoZSBzbWNjIGNhbGwgaXMgY2FsbGluZywgYnV0
IGRvbid0IGtub3cgYWJvdXQKPiA+IGFib3V0IHNtY2Mgc3R1ZmYuCj4gCj4gR29vZCBxdWVzdGlv
biAtIGl0J3MgcXVpdGUgcG9zc2libGUgdGhpbmdzIGFyZSBibG93aW5nIHVwIGp1c3QgYmVjYXVz
ZQo+IHRoZXJlJ3Mgbm90aGluZyB0aGVyZSB0byBoYW5kbGUgdGhlIFNNQy4gTXkgRFRCIGlzIGFz
IHVwc3RyZWFtOgo+IAo+ICAgICAgICAgY3B1cyB7Cj4gICAgICAgICAgICAgICAgICNhZGRyZXNz
LWNlbGxzID0gPDB4MDE+Owo+ICAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwweDAwPjsK
PiAgICAgICAgICAgICAgICAgZW5hYmxlLW1ldGhvZCA9ICJyb2NrY2hpcCxyazMwNjYtc21wIjsK
PiAgICAgICAgICAgICAgICAgcm9ja2NoaXAscG11ID0gPDB4MDY+Owo+IAo+IEkgaGF2ZW4ndCBp
bnZlc3RpZ2F0ZWQgd2h5IHRoaXMgY29kZSBpcyBhdHRlbXB0aW5nIHRvIGNhbGwgYW4gU01DIG9u
Cj4gdGhpcyBib2FyZC4KCkkgZ3Vlc3MgdGhlIHdoeSBpcyBlYXN5LCBzb21ldGhpbmcgdG8gZG8g
d2l0aCBzdXNwZW5kIDotKSAuCgpJIGRpZCBnbyB0ZXN0aW5nIGEgYml0LCBib290aW5nIGEgcmsz
Mjg4LXZleXJvbiBwcm9kdWNlcyB0aGUgc2FtZSBpc3N1ZQp5b3Ugc2F3LCBsaWtlbHkgZHVlIHRv
IHRoZSBub24tZXhpc3RlbnQgdHJ1c3RlZC1maXJtd2FyZS4KCk9uIHRoZSBhcm02NC1zaWRlLCBJ
IHRyaWVkIGEgcGxldGhvcmEgb2Ygc29jcyArIHRmYS12ZXJzaW9ucywKCiAgcmszMzI4OiB2Mi41
IHVwc3RyZWFtKD8pLXRmLWEKICByazMzOTk6IHYyLjkgdXBzdHJlYW0tdGYtYQogIHB4MzA6IHYy
LjQrdjIuOSB1cHN0cmVhbS10Zi1hCiAgcmszNTY4OiB2Mi4zIHZlbmRvci10Zi1hCiAgcmszNTg4
OiB2Mi4zIHZlbmRvci10Zi1hCgphbmQgYWxsIHJhbiBqdXN0IGZpbmUuClNvIGl0IHJlYWxseSBs
b29rcyBsaWtlIHRoZSBzbWNjIGNhbGwgZ29pbmcgdG8gc29tZSB1bnNldCBsb2NhdGlvbiBpcwp0
aGUgY3VscHJpdC4KCkxvb2tpbmcgYXQgb3RoZXIgdXNlcnMgb2YgYXJtX3NtY2Nfc21jLCBtb3N0
IG9mIHRoZW0gc2VlbSB0byBiZSBoYW5kbGVkCnVuZ3VhcmRlZCwgYnV0IHNvbWUgb2xkZXIoPykg
YXJtMzIgYm9hcmRzIGFjdHVhbGx5IGNoZWNrIHRoZWlyIERUcyBmb3IgYW4Kb3B0ZWUgbm9kZSBi
ZWZvcmUgdHJ5aW5nIHRoZWlyIHNtYy1jYWxsLgoKSSBndWVzcyBpbiB0aGUgcG0tZG9tYWluIGNh
c2UsIHdlIGNvdWxkIGp1c3Qgd3JhcCB0aGUgY2FsbCB3aXRoOgoJaWYoYXJtX3NtY2NjXzFfMV9n
ZXRfY29uZHVpdCgpICE9IFNNQ0NDX0NPTkRVSVRfTk9ORSkKCkkndmUgY2hlY2tlZCBpbiBteSBi
b2FyZHMgbm93LCBhbmQgYWxsIHRoZSBib2FyZHMgbWVudGlvbmVkIGFib3ZlIHNlZW0KdG8gaGFu
ZGxlIHRoaXMgd2VsbCB3aXRoIHNtY2NjLXZlcnNpb25zIG9mIGF0IGxlYXN0IDB4MTAwMDIgLgoK
SGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
