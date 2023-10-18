Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77103CDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 09:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AOwOog/UjKrA2tPMXDGI0iRXe+0F7VczAXiZz7Nv908=; b=ygBRj71m3eCSq+
	sWSMYTDtJcbRZDGwgvaSFZgGjQKDLy8Oqncl8X3c/sswXThorCeyQ+cLH11DYHknO40NBE3MJkNXF
	xzlssn6LQPBhJDK24OZ4qjXpbT4m2s+gS/6jRvJ43hsHbvsURGTMT2DV5NqMc5INBou6RPYSJ24Vz
	dMeJVgwT7YWEyX9BLLDZiY76jwikTvRTSAOXaW4fmPd7RIqeoZXNKw0fnHaoRZk3TyYCQh/XVJX0N
	1rRDA4YCn0Zy1QVcK6ldWPvI5Uulf0MGvD6fEvkYdCsaSYP/NPRPh6RE3drwag9aa1QaWShYdUoJY
	5WJIf1MeammsRnGXtmBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt3GO-00EK6z-0R;
	Wed, 18 Oct 2023 09:54:52 +0000
Received: from mail-m118208.qiye.163.com ([115.236.118.208])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt3GL-00EK6N-1z
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 09:54:51 +0000
DKIM-Signature: a=rsa-sha256;
	b=ktnWCoCVQs3NjOmaLfQWDGqlLKhB4vTfPMuUx4NT7mglrFeujvhtijGgbsTmfwPNUfPz4EDFWD4nwyI3ZFAIXPNTeyajKI0lgLHU4FQ0ZB9gxsGVnMWqmayrM7w43PdDAE4TynnaeKjyF9t/ABnBtuudw6eHohY6bzgJ6iIfNDQ=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=iHZj9ysRkLYNKTtdYBxy01Tt4rsin7TfVJbcclPSC6U=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 7BD44780E1F;
	Wed, 18 Oct 2023 17:48:45 +0800 (CST)
Message-ID: <ed5642d7-1e1b-4007-bab3-77f9a8644373@rock-chips.com>
Date: Wed, 18 Oct 2023 17:48:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] drm/rockchip: fix the plane format defination of
 rk3568/6
Content-Language: en-US
To: Jonas Karlman <jonas@kwiboo.se>, Andy Yan <andyshrk@163.com>,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 heiko@sntech.de
Cc: s.hauer@pengutronix.de, sjoerd.simons@collabora.com, hjc@rock-chips.com,
 sebastian.reichel@collabora.com
References: <20231013122001.1594009-1-andyshrk@163.com>
 <20231013122112.1594259-1-andyshrk@163.com>
 <3b07caba-3978-372a-9107-f8a73ad6fad1@kwiboo.se>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <3b07caba-3978-372a-9107-f8a73ad6fad1@kwiboo.se>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUwZGFYaGk4dTUkZGkgZSENVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk5MSUpJVUpLS1VKQl
	kG
X-HM-Tid: 0a8b4230070db24fkuuu7bd44780e1f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mwg6Dio4Pjw4DEorFhAODAk*
	PDhPFAJVSlVKTUJMTUlJTklNSUxJVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0xKTTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_025449_795834_0B01B61B 
X-CRM114-Status: GOOD (  16.05  )
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

SGkgSm9uYXM6CgpPbiAxMC8xNS8yMyAwMjozMCwgSm9uYXMgS2FybG1hbiB3cm90ZToKPiBIaSBB
bmR5LAo+Cj4gT24gMjAyMy0xMC0xMyAxNDoyMSwgQW5keSBZYW4gd3JvdGU6Cj4+IEZyb206IEFu
ZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4KPj4gQWRkIHRoZSBtaXNzaW5nIDEw
IGJpdCBSR0IgZm9ybWF0IGZvciBjbHVzdGVyIHdpbmRvdy4KPj4gVGhlIGNsdXN0ZXIgd2luZG93
cyBvbiByazM1NjgvNiBvbmx5IHN1cHBvcnQgYWZiYyBmb3JtYXQsCj4+IHNvIGNoYW5nZSB0aGUg
IGxpbmVhciB5dXYgZm9ybWF0IE5WMTIvMTYvMjQgdG8gbm9uLUxpbmVhcgo+PiBZVVY0MjBfOEJJ
VC9ZVVY0MjBfMTBCSVQvWVVZVi9ZMjEwLgo+Pgo+PiBBZGQgTlYxNSBmb3IgZXNtYXJ0IHdpbmRv
d3MuCj4+Cj4+IEFsc28gYWRkIHNvbWUgY29tbWVudHMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEFu
ZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4KPj4gLS0tCj4+Cj4+IENoYW5nZXMg
aW4gdjI6Cj4+IC0gc3BsaXQgcmVuYW1lIHRvIGFub3RoZXIgcGF0Y2gKPj4KPj4gICBkcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9wMl9yZWcuYyB8IDIyICsrKysrKysrKysrKyst
LS0tLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25z
KC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
dm9wMl9yZWcuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3AyX3JlZy5j
Cj4+IGluZGV4IDYyYjU3M2YyODJhNy4uMDVhZWU1ODhlOGM5IDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9wMl9yZWcuYwo+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfdm9wMl9yZWcuYwo+PiBAQCAtMTYsNiArMTYsMTAg
QEAKPj4gICAjaW5jbHVkZSAicm9ja2NoaXBfZHJtX3ZvcDIuaCIKPj4gICAKPj4gICBzdGF0aWMg
Y29uc3QgdWludDMyX3QgZm9ybWF0c193aW5fZnVsbF8xMGJpdFtdID0gewo+PiArCURSTV9GT1JN
QVRfWFJHQjIxMDEwMTAsCj4+ICsJRFJNX0ZPUk1BVF9BUkdCMjEwMTAxMCwKPj4gKwlEUk1fRk9S
TUFUX1hCR1IyMTAxMDEwLAo+PiArCURSTV9GT1JNQVRfQUJHUjIxMDEwMTAsCj4gYXRvbWljX2No
ZWNrKCkgd2lsbCBmYWlsIGZvciB0aGVzZSBmb3JtYXRzIGR1ZSB0byBtaXNzaW5nIHN1cHBvcnQg
Zm9yCj4gdGhlc2UgZm9ybWF0cyBpbiB0aGUgdm9wMiBkcml2ZXIuIFN1cHBvcnQgZm9yIHRoZXNl
IGZvcm1hdHMgc2hvdWxkIGJlCj4gYWRkZWQgdG8gdm9wMiBkcml2ZXIgYmVmb3JlIGJlaW5nIGV4
cG9zZWQgYXMgYSBzdXBwb3J0ZWQgcGl4ZWwgZm9ybWF0Lgo+Cj4gdm9wMl9jb252ZXJ0X2Zvcm1h
dCgpIHJldHVybiAtRUlOVkFMIGZvciB0aGVzZSBhbmQgYmVsb3cgZm9ybWF0cy4KCgpUaGFua3Mg
Zm9yIGNhdGNoaW5nIHRoaXMsIEkgZml4ZWQgaXQgaW4gdjMsIEFkZCBoYXZlwqAgYWxsIHRoZSBh
ZGRlZMKgIAphZmJjIGZvcm1hdMKgIHRlc3RlZCBvbiBteSByazM1NjYtYm94LWRlbW8gYm9hcmQu
Cgo+Cj4+ICAgCURSTV9GT1JNQVRfWFJHQjg4ODgsCj4+ICAgCURSTV9GT1JNQVRfQVJHQjg4ODgs
Cj4+ICAgCURSTV9GT1JNQVRfWEJHUjg4ODgsCj4+IEBAIC0yNCw5ICsyOCwxMCBAQCBzdGF0aWMg
Y29uc3QgdWludDMyX3QgZm9ybWF0c193aW5fZnVsbF8xMGJpdFtdID0gewo+PiAgIAlEUk1fRk9S
TUFUX0JHUjg4OCwKPj4gICAJRFJNX0ZPUk1BVF9SR0I1NjUsCj4+ICAgCURSTV9GT1JNQVRfQkdS
NTY1LAo+PiAtCURSTV9GT1JNQVRfTlYxMiwKPj4gLQlEUk1fRk9STUFUX05WMTYsCj4+IC0JRFJN
X0ZPUk1BVF9OVjI0LAo+PiArCURSTV9GT1JNQVRfWVVWNDIwXzhCSVQsIC8qIHl1djQyMF84Yml0
IG5vbi1MaW5lYXIgbW9kZSBvbmx5ICovCj4+ICsJRFJNX0ZPUk1BVF9ZVVY0MjBfMTBCSVQsIC8q
IHl1djQyMF8xMGJpdCBub24tTGluZWFyIG1vZGUgb25seSAqLwo+IFNhbWUgZm9yIFlVVjQyMF84
QklUIGFuZCBZVVY0MjBfMTBCSVQuCj4KPj4gKwlEUk1fRk9STUFUX1lVWVYsIC8qIHl1djQyMl84
Yml0IG5vbi1MaW5lYXIgbW9kZSBvbmx5Ki8KPj4gKwlEUk1fRk9STUFUX1kyMTAsIC8qIHl1djQy
Ml8xMGJpdCBub24tTGluZWFyIG1vZGUgb25seSAqLwo+IFNhbWUgZm9yIFkyMTAuCj4KPj4gICB9
Owo+PiAgIAo+PiAgIHN0YXRpYyBjb25zdCB1aW50MzJfdCBmb3JtYXRzX3dpbl9mdWxsXzEwYml0
X3l1eXZbXSA9IHsKPj4gQEAgLTM4LDExICs0MywxMiBAQCBzdGF0aWMgY29uc3QgdWludDMyX3Qg
Zm9ybWF0c193aW5fZnVsbF8xMGJpdF95dXl2W10gPSB7Cj4+ICAgCURSTV9GT1JNQVRfQkdSODg4
LAo+PiAgIAlEUk1fRk9STUFUX1JHQjU2NSwKPj4gICAJRFJNX0ZPUk1BVF9CR1I1NjUsCj4+IC0J
RFJNX0ZPUk1BVF9OVjEyLAo+PiAtCURSTV9GT1JNQVRfTlYxNiwKPj4gLQlEUk1fRk9STUFUX05W
MjQsCj4+IC0JRFJNX0ZPUk1BVF9ZVllVLAo+PiAtCURSTV9GT1JNQVRfVllVWSwKPj4gKwlEUk1f
Rk9STUFUX05WMTIsIC8qIHl1djQyMF84Yml0IGxpbmVhciBtb2RlLCAyIHBsYW5lICovCj4+ICsJ
RFJNX0ZPUk1BVF9OVjE1LCAvKiB5dXY0MjBfMTBiaXQgbGluZWFyIG1vZGUsIDIgcGxhbmUsIG5v
IHBhZGRpbmcgKi8KPiBTYW1lIGZvciBOVjE1Lgo+Cj4gUmVnYXJkcywKPiBKb25hcwo+Cj4+ICsJ
RFJNX0ZPUk1BVF9OVjE2LCAvKiB5dXY0MjJfOGJpdCBsaW5lYXIgbW9kZSwgMiBwbGFuZSAqLwo+
PiArCURSTV9GT1JNQVRfTlYyNCwgLyogeXV2NDQ0XzhiaXQgbGluZWFyIG1vZGUsIDIgcGxhbmUg
Ki8KPj4gKwlEUk1fRk9STUFUX1lWWVUsIC8qIHl1djQyMl84Yml0W1lWWVVdIGxpbmVhciBtb2Rl
ICovCj4+ICsJRFJNX0ZPUk1BVF9WWVVZLCAvKiB5dXY0MjJfOGJpdFtWWVVZXSBsaW5lYXIgbW9k
ZSAqLwo+PiAgIH07Cj4+ICAgCj4+ICAgc3RhdGljIGNvbnN0IHVpbnQzMl90IGZvcm1hdHNfd2lu
X2xpdGVbXSA9IHsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
