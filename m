Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C00EEC54E49
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Mar 2024 02:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ue86q8kc01bCLGJyEB3XFb+oRG5h4EuXpMHZTNDfgzU=; b=gAo2/gjLxdPCEy
	qSZ+9dGlvX0UlLuIoM2nWS9gImWcvf/nB0rsqcRWo145bOCrCPJA91K+ZfoTATdAJFW2Q3YlVJ7Cy
	Xyrc7UWdQaM9FLAB85VPlQZnQUZqr4sD2C+MmCad12tPSmnv3wBrMOwdwKB57uRPugM4RW1cduWFL
	nybiHZ7fipS8OTmEO4g+jumuIg+7r0oc9cLUMcPFBzFiH+lCCJRWW4zodyIr3svwPjE6BSviahEqY
	bprXh+UML0gdgQErdJfnO9mlg+CF2PmvToscxhMYsEK9EU3ry0HsqfMGwtHIqJOKr70bFa4+tBdl4
	BneD3mS3XB5zRd7Y1wKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhhDL-0000000G152-1pj7;
	Wed, 06 Mar 2024 02:41:03 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhhDG-0000000G13e-2RHK;
	Wed, 06 Mar 2024 02:41:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709692854;
	bh=mgOhO0IDZgLwsPvXZt6ogw3x+b9+CWMm5P2F9Ag7u7o=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=MZr+N44xWgYx/KeDYYxby6i5AzGFwBKGEf04A7jZxAjv/oiqSPM+Iac/PrkzORUkH
	 A1WXgZKX3mcU8AvNMeimSYpUq9t+Juc6tBMXKanpqny19+fjNt1wAbIolq2ednOBDw
	 tanlqsaUCXZnB1wseZjvY1ci9HHDWh3b5k5xvDYaV1PxT0tMOW9DklPtS7+xuMdDdG
	 OjxOq2VbGWANCyPIMv2jX4XA0pChfI+Awtt/4eJr+aZkeUYEHzXwriZbtWCFwW466B
	 MAgE7dgS0n1Wqkcs5dR+rnPHEJ1gCpsR2axSkhPy+RRHhGjmInK6oQcXWqffprHr2V
	 nCXUY3ZHF6V3g==
Received: from [100.66.96.193] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id F0AC53780624;
	Wed,  6 Mar 2024 02:40:51 +0000 (UTC)
Message-ID: <ea5d08ef-a9bb-5102-4357-21dbae3462cd@collabora.com>
Date: Wed, 6 Mar 2024 08:10:49 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 9/9] drm/ci: uprev IGT and update testlist
Content-Language: en-US
From: Vignesh Raman <vignesh.raman@collabora.com>
To: =?UTF-8?Q?Ma=c3=adra_Canal?= <mcanal@igalia.com>,
 dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, guilherme.gallo@collabora.com,
 sergi.blanch.torne@collabora.com, linux-kernel@vger.kernel.org,
 david.heidelberg@collabora.com, helen.koike@collabora.com,
 linux-mediatek@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 daniel@ffwll.ch, linux-amlogic@lists.infradead.org, airlied@gmail.com
References: <20240130150340.687871-1-vignesh.raman@collabora.com>
 <20240130150340.687871-10-vignesh.raman@collabora.com>
 <26f6426d-dcb6-4b14-b031-368b2248e9e7@igalia.com>
 <799653a3-e079-4e17-9d68-c0e384a216b0@igalia.com>
 <e1f56317-b70d-0b81-75f0-fef50616e026@collabora.com>
In-Reply-To: <e1f56317-b70d-0b81-75f0-fef50616e026@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_184058_895494_1C54155E 
X-CRM114-Status: GOOD (  12.65  )
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

SGkgTWHDrXJhLAoKT24gMTkvMDIvMjQgMTQ6MjIsIFZpZ25lc2ggUmFtYW4gd3JvdGU6Cj4gSGkg
TWHDrXJhLAo+IAo+IE9uIDEwLzAyLzI0IDIzOjUwLCBNYcOtcmEgQ2FuYWwgd3JvdGU6Cj4+IE9u
IDIvMTAvMjQgMTU6MTcsIE1hw61yYSBDYW5hbCB3cm90ZToKPj4+IE9uIDEvMzAvMjQgMTI6MDMs
IFZpZ25lc2ggUmFtYW4gd3JvdGU6Cj4+Pj4gVXByZXYgSUdUIGFuZCBhZGQgYW1kLCB2M2QsIHZj
NCBhbmQgdmdlbSBzcGVjaWZpYwo+Pj4+IHRlc3RzIHRvIHRlc3RsaXN0LiBIYXZlIHRlc3RsaXN0
LnR4dCBwZXIgZHJpdmVyCj4+Pj4gYW5kIGluY2x1ZGUgYSBiYXNlIHRlc3RsaXN0IHNvIHRoYXQg
dGhlIGRyaXZlcgo+Pj4+IHNwZWNpZmljIHRlc3RzIHdpbGwgcnVuIG9ubHkgb24gdGhvc2UgaGFy
ZHdhcmUuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBWaWduZXNoIFJhbWFuIDx2aWduZXNoLnJh
bWFuQGNvbGxhYm9yYS5jb20+Cj4+Pj4gLS0tCj4+Pj4KPj4+PiB2MzoKPj4+PiDCoMKgIC0gTmV3
IHBhdGNoIGluIHNlcmllcyB0byB1cHJldiBJR1QgYW5kIHVwZGF0ZSB0ZXN0bGlzdC4KPj4+Pgo+
Pj4+IC0tLQo+Pj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9jaS9naXRsYWItY2kueW1swqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMiArLQo+Pj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9jaS9p
Z3RfcnVubmVyLnNowqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEyICstCj4+Pj4gwqAg
ZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3RsaXN0LWFtZGdwdS50eHTCoMKgwqDCoMKgwqDCoCB8IDE1
MSAKPj4+PiArKysrKysrKysrKysrKysrKysKPj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vY2kvdGVz
dGxpc3QtbXNtLnR4dMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA1MCArKysrKysKPj4+PiDCoCBk
cml2ZXJzL2dwdS9kcm0vY2kvdGVzdGxpc3QtcGFuZnJvc3QudHh0wqDCoMKgwqDCoCB8wqAgMTcg
KysKPj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vY2kvdGVzdGxpc3QtdjNkLnR4dMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHzCoCA3MyArKysrKysrKysKPj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0vY2kvdGVz
dGxpc3QtdmM0LnR4dMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA0OSArKysrKysKPj4+PiDCoCBk
cml2ZXJzL2dwdS9kcm0vY2kvdGVzdGxpc3QudHh0wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8IDEwMCArKysrLS0tLS0tLS0KPj4+PiDCoCAuLi4vZ3B1L2RybS9jaS94ZmFpbHMvYW1kZ3B1
LXN0b25leS1mYWlscy50eHQgfMKgIDI0ICsrLQo+Pj4+IMKgIC4uLi9kcm0vY2kveGZhaWxzL2Ft
ZGdwdS1zdG9uZXktZmxha2VzLnR4dMKgwqDCoCB8wqDCoCA5ICstCj4+Pj4gwqAgLi4uL2dwdS9k
cm0vY2kveGZhaWxzL2FtZGdwdS1zdG9uZXktc2tpcHMudHh0IHzCoCAxMCArLQo+Pj4+IMKgIDEx
IGZpbGVzIGNoYW5nZWQsIDQyNyBpbnNlcnRpb25zKCspLCA3MCBkZWxldGlvbnMoLSkKPj4+PiDC
oCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3RsaXN0LWFtZGdwdS50
eHQKPj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3RsaXN0
LW1zbS50eHQKPj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2NpL3Rl
c3RsaXN0LXBhbmZyb3N0LnR4dAo+Pj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dw
dS9kcm0vY2kvdGVzdGxpc3QtdjNkLnR4dAo+Pj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2dwdS9kcm0vY2kvdGVzdGxpc3QtdmM0LnR4dAo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9jaS9naXRsYWItY2kueW1sIAo+Pj4+IGIvZHJpdmVycy9ncHUvZHJtL2Np
L2dpdGxhYi1jaS55bWwKPj4+PiBpbmRleCBiYzhjYjM0MjA0NzYuLmUyYjAyMTYxNmE4ZSAxMDA2
NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vY2kvZ2l0bGFiLWNpLnltbAo+Pj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9jaS9naXRsYWItY2kueW1sCj4+Pj4gQEAgLTUsNyArNSw3IEBAIHZh
cmlhYmxlczoKPj4+PiDCoMKgwqAgVVBTVFJFQU1fUkVQTzogZ2l0Oi8vYW5vbmdpdC5mcmVlZGVz
a3RvcC5vcmcvZHJtL2RybQo+Pj4+IMKgwqDCoCBUQVJHRVRfQlJBTkNIOiBkcm0tbmV4dAo+Pj4+
IC3CoCBJR1RfVkVSU0lPTjogZDJhZjEzZDlmNWJlNWNlMjNkOTk2ZTRhZmQzZTQ1OTkwZjVhYjk3
Nwo+Pj4+ICvCoCBJR1RfVkVSU0lPTjogYjBjYzgxNjBlYmRjODdjZTA4YjdmZDgzYmIzYzk5ZmY3
YTRkODYxMAo+Pj4+IMKgwqDCoCBERVFQX1JVTk5FUl9HSVRfVVJMOiAKPj4+PiBodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvYW5ob2x0L2RlcXAtcnVubmVyLmdpdAo+Pj4+IMKgwqDCoCBE
RVFQX1JVTk5FUl9HSVRfVEFHOiB2MC4xNS4wCj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9jaS9pZ3RfcnVubmVyLnNoIAo+Pj4+IGIvZHJpdmVycy9ncHUvZHJtL2NpL2lndF9ydW5u
ZXIuc2gKPj4+PiBpbmRleCBmMDAxZTAxNWQxMzUuLjJmZDA5YjliN2NmNiAxMDA3NTUKPj4+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vY2kvaWd0X3J1bm5lci5zaAo+Pj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9jaS9pZ3RfcnVubmVyLnNoCj4+Pj4gQEAgLTY0LDEwICs2NCwyMCBAQCBpZiAhIGdy
ZXAgLXEgImNvcmVfZ2V0dmVyc2lvbiIgCj4+Pj4gL2luc3RhbGwvdGVzdGxpc3QudHh0OyB0aGVu
Cj4+Pj4gwqAgZmkKPj4+PiDCoCBzZXQgK2UKPj4+PiAraWYgWyAiJERSSVZFUl9OQU1FIiA9ICJh
bWRncHUiIF07IHRoZW4KPj4+PiArwqDCoMKgIFRFU1RfTElTVD0iL2luc3RhbGwvdGVzdGxpc3Qt
YW1kZ3B1LnR4dCIKPj4+PiArZWxpZiBbICIkRFJJVkVSX05BTUUiID0gIm1zbSIgXTsgdGhlbgo+
Pj4+ICvCoMKgwqAgVEVTVF9MSVNUPSIvaW5zdGFsbC90ZXN0bGlzdC1tc20udHh0Igo+Pj4+ICtl
bGlmIFsgIiREUklWRVJfTkFNRSIgPSAicGFuZnJvc3QiIF07IHRoZW4KPj4+PiArwqDCoMKgIFRF
U1RfTElTVD0iL2luc3RhbGwvdGVzdGxpc3QtcGFuZnJvc3QudHh0Igo+Pj4+ICtlbHNlCj4+Pj4g
K8KgwqDCoCBURVNUX0xJU1Q9Ii9pbnN0YWxsL3Rlc3RsaXN0LnR4dCIKPj4+PiArZmkKPj4+PiAr
Cj4+Pgo+Pj4gSXNuJ3QgVjNEIGFuZCBWQzQgdGVzdGxpc3RzIG1pc3Npbmc/Cj4gCj4gWWVzLiBX
ZSBuZWVkIHRvIGFkZCBjaSBqb2JzIHRvIHRlc3QgdjNkL3ZjNC4gVGhlIGluaXRpYWwgaWRlYSB3
YXMganVzdCAKPiB0byBzcGxpdCB0aGUgdGVzdGxpc3QgcGVyIGRyaXZlciBhbmQgYWRkIHZjNC92
M2QgdGVzdHMgc28gdGhhdCBpdCBjYW4gYmUgCj4gdXNlZCBpbiBmdXR1cmUuIEkgd2lsbCBhZGQg
dGhlIGpvYnMgYXMgcGFydCBvZiB2NC4KClRvIGluY2x1ZGUgUlBpIGpvYnMsIHdlIG5lZWQgdG8g
dHdlYWsgbWVzYS1jaSB0byBwYXNzIGtlcm5lbCBhbmQgZHRiIGFuZCAKdXBkYXRlIG1lc2EtY2kg
aW4gZHJtLWNpLiBTbyB3aWxsIHNlbmQgdGhpcyBhcyBhIHNlcGVyYXRlIHBhdGNoL3Nlcmllcy4K
ClJlZ2FyZHMsClZpZ25lc2gKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
