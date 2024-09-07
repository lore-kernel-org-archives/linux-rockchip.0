Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A36AE6FE53
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 08:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztlOR87FFLh/d/A0xztVWux6sP2otBVlewCd4hrHOoM=; b=sxJTS+tJGaq3d3
	0aCrwDjvcdZS9vdgXxN3pFvbUjHcXJS/wGuXtbSro6g8YGpuPIMtbfUc7Jge9r0Y9ToEJH73L0QTr
	fZJbUq0B6DO6PcX0Md5Por0qTSueiShLhB9K6xXlFkif5Z+0ngO/i451b0/+ga17sIM2a5bWB5EiI
	B2cqn9xiuosYvr4KC0IMtXQ2NlLDb9yg3mGn76pOwWSwLImr+FnXM8tSvwk3/3Pia02f51+3BK6ME
	j4Q5JPSMppL4EGq5FzCNVeFh6TcerhpWbca3JGUeFfGl1DLp57nE0g6XYO+xiXdQG6vKkFEQkbMvt
	LEwIy/dDIYcj2MBhV2bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smrHB-0000000EiT3-430f;
	Sat, 07 Sep 2024 08:58:37 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smrGA-0000000EiKS-0sv0;
	Sat, 07 Sep 2024 08:57:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=ta9LbWPktVaFbzSJMRfIFs5G3l89ulAedhc3mStWRsc=; b=F
	Lye3heJZvJ9pF9N5iPY3VQv6ol0Y1pW3FWsAGUoaNG0ktElrRh15ppu8CHH4iaEc
	520wKhG/4Fj934kZnaLLa3DhtaLLU3CC2HyzQQqHotFjQ1DlEaywMCfr8kUraLpO
	ENs+vR2bBKvBWU00+QRstsr5eu6ZgVJRX/zhyB+HWg=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-129 (Coremail) ; Sat, 7 Sep 2024 16:56:08 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Sat, 7 Sep 2024 16:56:08 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Diederik de Haas" <didi.debian@cknow.org>
Cc: "Min-Hua Chen" <minhuadotchen@gmail.com>, airlied@gmail.com, 
	andy.yan@rock-chips.com, daniel@ffwll.ch, 
	dri-devel@lists.freedesktop.org, heiko@sntech.de, hjc@rock-chips.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de
Subject: Re:Re: [PATCH] drm/rockchip: include rockchip_drm_drv.h
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <D3ZX6LZNLOYC.30CT6AX32VI2T@cknow.org>
References: <D3Z5JMTKPQIS.2M5O5DY0S4U9G@cknow.org>
 <20240907030259.1243487-1-minhuadotchen@gmail.com>
 <D3ZX6LZNLOYC.30CT6AX32VI2T@cknow.org>
X-NTES-SC: AL_Qu2ZB/qStkst7iSQbOkZnEobh+Y5UcK2s/ki2YFXN5k0mCTU0SYHcVtZP2PS1cyiLhihlDywfDNM9slef49ob7BbQjG2KYVvHK7P3Hvr9aVJ
MIME-Version: 1.0
Message-ID: <175266d5.2a89.191cbb2a62e.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: _____wD3_6IoFdxm2CU0AA--.26427W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQhTXmVOCt+zYAACsD
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240907_015734_574902_0C2E2939 
X-CRM114-Status: GOOD (  10.01  )
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

CgpIaSDvvIwKQXQgMjAyNC0wOS0wNyAxNjo0NzoxOCwgIkRpZWRlcmlrIGRlIEhhYXMiIDxkaWRp
LmRlYmlhbkBja25vdy5vcmc+IHdyb3RlOgo+T24gU2F0IFNlcCA3LCAyMDI0IGF0IDU6MDIgQU0g
Q0VTVCwgTWluLUh1YSBDaGVuIHdyb3RlOgo+PiA+RldJVzogSSBkaWRuJ3Qgc2VlIGl0IGVpdGhl
ciwgYnV0IEkgYXNzdW1lZCBJIHdhcyBtaXNzaW5nIHRoZSByaWdodAo+PiA+Y29udGV4dCAoaS5l
LiBwYXRjaGVzKSBuZWVkZWQgdG8gdHJpZ2dlciB0aGF0IHdhcm5pbmcuCj4+Cj4+IEkgdHJpZ2dl
cmVkIHRoZSB3YXJuaW5nIGJ5IHRoZSBmb2xsb3dpbmcgc3RlcDoKPj4KPj4gaW5zdGFsbCAnc3Bh
cnNlJyBmaXJzdAo+Pgo+PiBBUkNIPWFybTY0IExMVk09MSBtYWtlIEM9MSBDRj0nLWZkaWFnbm9z
dGljLXByZWZpeCAtRF9fQ0hFQ0tfRU5ESUFOX18nIG1ycHJvcGVyIGRlZmNvbmZpZyBhbGwgLWo4
Cj4KPlRoaXMsIGVzcGVjaWFsbHkgdGhlICdMTFZNJyBwYXJ0LCAgaXMgaW1wb3J0YW50IGNvbnRl
eHQgaW5mb3JtYXRpb24KPmFuZCBzaG91bGQgYmUgcGFydCBvZiB0aGUgY29tbWl0IG1lc3NhZ2Uu
Cj4KPkkgaGFkIG9ubHkganVzdCBzdGFydGVkIHdoZW4gSSBzYXcgYSBudW1iZXIgb2Ygc3BhcnNl
IHdhcm5pbmdzOgo+Cj4gIERUQyAgICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtZWRnZWJsZS1uZXU2YS1pby5kdGIKPiAgT1ZMICAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Rp
L2szLWo3MjFlLWV2bS5kdGIKPiAgT1ZMICAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWo3
MjFzMi1ldm0uZHRiCj4gIE9WTCAgICAgYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1hbTY1NC1p
ZGsuZHRiCj4gIERUQyAgICAgYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NjNzE4MC10cm9nZG9y
LWxhem9yLXIzLWtiLmR0Ygo+ICBEVEMgICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LWVkZ2VibGUtbmV1NmEtd2lmaS5kdGJvCj4gIERUQyAgICAgYXJjaC9hcm02NC9ib290
L2R0cy9xY29tL3NjNzE4MC10cm9nZG9yLWxhem9yLXIzLWx0ZS5kdGIKPiAgRFRDICAgICBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1lZGdlYmxlLW5ldTZiLWlvLmR0Ygo+ICBE
VEMgICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2YjEtdjEwLmR0Ygo+
ICBEVEMgICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzcxODAtdHJvZ2Rvci1sYXpvci1y
OS5kdGIKPi4uL2luaXQvbWFpbi5jOjE5MjoxMjogc3BhcnNlOiB3YXJuaW5nOiBzeW1ib2wgJ2Vu
dnBfaW5pdCcgd2FzIG5vdCBkZWNsYXJlZC4gU2hvdWxkIGl0IGJlIHN0YXRpYz8KPi4uL2luaXQv
bWFpbi5jOjI5MDoxNjogc3BhcnNlOiB3YXJuaW5nOiBjYXN0IHRvIHJlc3RyaWN0ZWQgX19sZTMy
Cj4uLi9pbml0L21haW4uYzoyOTE6MTY6IHNwYXJzZTogd2FybmluZzogY2FzdCB0byByZXN0cmlj
dGVkIF9fbGUzMgo+ICBDSEVDSyAgIC4uL2luaXQvZG9fbW91bnRzLmMKCj4KCgpJIGNhbiBzZWUg
c2FtZSB3YXJuaW5nc++8jCBhIGxvdHMgb2bjgIIKQW5kIGFsc28gc2VlIHRoZSB3YXJuaW5nIGlu
IHZvcDLvvJoKZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcDJfcmVnLmM6NTAy
OjI0OiBzcGFyc2U6IHdhcm5pbmc6IHN5bWJvbCAndm9wMl9wbGF0Zm9ybV9kcml2ZXInIHdhcyBu
b3QgZGVjbGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/CgoKTWluIEh1Ye+8jElmIHlvdSBhcmUg
YWdyZWXvvIxJIHdpbGwgc3BsaXQgaXQgZnJvbSBteSBwYXRjaO+8jCBhbmQgYWRkIGEgRml4IHRh
ZyDvvIxhbmQgYWxzbyBhZGQgYSBTb0Igb2YgeW9177yMIFRoZW4gcmVzZW5kIGluIE15IFYzIHNl
cmllc++8jHRoaXMKd2lsbCBtYWtlIG15IHBhdGNoIHNlcmllcyBlYXNpZXLjgIIKID5BbmQgc2V2
ZXJhbCBmb2xsb3dlZCwgaW5jbHVkaW5nIGluIGMtY29kZSBmaWxlcy4gU28gSSBzdG9wcGVkIHRo
ZSBidWlsZAo+YW5kIGFzc3VtZSB5b3UndmUgaWRlbnRpZmllZCBhIG9yIHNldmVyYWwgYWN0dWFs
IGlzc3Vlcy4KPgo+SSd2ZSBzZWVuIHNldmVyYWwgY29tbWl0cyB3aGVyZSBjaGFuZ2VzIHdlcmUg
bWFkZSBiZWNhdXNlIExMVk0gZmxhZ2dlZAo+cG90ZW50aWFsbHkgcHJvYmxlbWF0aWMgY29kZSwg
d2hlcmUgR0NDIGRpZCBub3QsIHNvIGl0J3MgcXVpdGUgcG9zc2libGUKPnlvdSdyZSBvbiB0byBz
b21ldGhpbmcgaGVyZS4KPgo+QnV0IGl0IHdvdWxkIGJlIGhlbHBmdWwgaWYgdGhlIGNvbW1pdCBt
ZXNzYWdlIHNhaWQgd2hhdCBjb2RlIHdhcwo+cG90ZW50aWFsbHkgcHJvYmxlbWF0aWMgYW5kIHdo
eS4gQW5kIHRoZW4gdGhlIHByb3BlciBmaXggZm9yIHRoYXQgY291bGQKPmluZGVlZCBiZSB0byBp
bmNsdWRlIGByb2NrY2hpcF9kcm1fZHJ2LmhgLgo+Cj5DaGVlcnMsCj4gIERpZWRlcmlrCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
