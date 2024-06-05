Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0D4FC27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 09:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goR7l63kI1MarIyXQ92ApoeeghUaRMleuSpKpgdA1so=; b=hvhO7+xneQTgwA
	Vf4PC7YQErbnsG90vkh1UWJm0VaV3IL2qC9MIe7MIArK4IKKj8c2lQcHWcFomaXkdb1m15MK+bd/m
	Km2OiOHKWMVfC+uJ5qWZDHw7ov8w89HsMSpecR6JKhDnv1BAvdKHaCazaNw67PytJFSBJ8Tr7cdrg
	dPHkgKItz/9mO+aoIbNa7QhmwbviYSyGjsh+kUVsHceHDM3SljoqYTfEDHRa06DzeRHzVFMtz2TOV
	UujAPTNySpkQ8VGaOAADNsWhUS79LndCJi3sF2h+deH/jsAvc0jlf3f4iW9oziyJKCT+D0EM+HGHG
	wt6fjaV0Rhfs7FAe+lnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEnIg-00000005UCy-2iIF;
	Wed, 05 Jun 2024 09:51:22 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEnId-00000005UBC-0W33;
	Wed, 05 Jun 2024 09:51:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=MdNh6SAnpaAxBejqoCB8dacBxjMaFc2bogoF3GPDXhM=; b=M
	6TX2AiSzNQqc9xK0cdZxm3mvd2HegZ4udNluS26uY1SugJSQzS/otedR668Zzncy
	vuRkMSc4y6kfat4aSnJeh47oXwB7GzX86QTeJSCjnUasTlHTbgl4w12t1khqhn4i
	t1Npizmad/o9mn+izNIV2kSNHh6m22uRiRxX+uLkh8=
Received: from andyshrk$163.com ( [103.29.142.67] ) by
 ajax-webmail-wmsvr-40-133 (Coremail) ; Wed, 5 Jun 2024 17:49:48 +0800 (CST)
X-Originating-IP: [103.29.142.67]
Date: Wed, 5 Jun 2024 17:49:48 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Maxime Ripard" <mripard@kernel.org>
Cc: neil.armstrong@linaro.org, 
	"Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>, 
	"Heiko Stuebner" <heiko@sntech.de>, 
	"Andrzej Hajda" <andrzej.hajda@intel.com>, 
	"Robert Foss" <rfoss@kernel.org>, 
	"Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>, 
	"Jonas Karlman" <jonas@kwiboo.se>, 
	"Jernej Skrabec" <jernej.skrabec@gmail.com>, 
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, 
	"Thomas Zimmermann" <tzimmermann@suse.de>, 
	"David Airlie" <airlied@gmail.com>, 
	"Daniel Vetter" <daniel@ffwll.ch>, 
	"Sandy Huang" <hjc@rock-chips.com>, "Rob Herring" <robh@kernel.org>, 
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>, 
	"Conor Dooley" <conor+dt@kernel.org>, 
	"Mark Yao" <markyao0591@gmail.com>, 
	"Andy Yan" <andy.yan@rock-chips.com>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, "Alexandre ARNOUD" <aarnoud@me.com>, 
	"Luis de Arquer" <ldearquer@gmail.com>, 
	"Algea Cao" <algea.cao@rock-chips.com>
Subject: Re:Re: [PATCH 00/14] Add initial support for the Rockchip RK3588
 HDMI TX Controller
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20230109(dcb5de15)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <20240605-logical-piculet-of-democracy-6bc732@houat>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <a4b22708-e85d-448a-8145-244b49bca053@linaro.org>
 <ab0a6372-091b-4293-8907-a4b3ff4845c0@rock-chips.com>
 <11359776.NyiUUSuA9g@phil>
 <ef60403f-078f-411a-867b-9b551e863f56@linaro.org>
 <b8066150-c147-4eb6-9f7a-2bd0268c274e@collabora.com>
 <4456bc5a.9b2d.18fe7b76790.Coremail.andyshrk@163.com>
 <01bde68a-88a7-46eb-860c-1375aa730bec@linaro.org>
 <20240605-logical-piculet-of-democracy-6bc732@houat>
X-NTES-SC: AL_Qu2aBfmTv0Ej7iiaZ+kXn0kXhec2W8Czvvgg34JRP5k0mSXX6CUwY09NEkf79cGgCSqTgCibcCB/zshrZotXco5bMU4VHDPmdbkz/lYpYcoq
MIME-Version: 1.0
Message-ID: <6328b7e5.a1dd.18fe7ce019d.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: _____wD3n2i9NGBm4rs4AA--.34978W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMw-0XmXAlpVwaAABsp
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_025119_578524_77F1D4F4 
X-CRM114-Status: GOOD (  41.12  )
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

CkhpLApBdCAyMDI0LTA2LTA1IDE3OjM5OjQ4LCAiTWF4aW1lIFJpcGFyZCIgPG1yaXBhcmRAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj5PbiBXZWQsIEp1biAwNSwgMjAyNCBhdCAxMToyODo0MUFNIEdNVCwg
bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZyB3cm90ZToKPj4gSGksCj4+IAo+PiBPbiAwNS8wNi8y
MDI0IDExOjI1LCBBbmR5IFlhbiB3cm90ZToKPj4gPiAKPj4gPiBIaSwKPj4gPiAKPj4gPiBBdCAy
MDI0LTA2LTA1IDA0OjMzOjU3LCAiQ3Jpc3RpYW4gQ2lvY2FsdGVhIiA8Y3Jpc3RpYW4uY2lvY2Fs
dGVhQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+PiA+ID4gT24gNi8zLzI0IDQ6MDggUE0sIG5laWwu
YXJtc3Ryb25nQGxpbmFyby5vcmcgd3JvdGU6Cj4+ID4gPiA+IEhpLAo+PiA+ID4gPiAKPj4gPiA+
ID4gT24gMDMvMDYvMjAyNCAxNTowMywgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4+ID4gPiA+ID4g
QW0gTW9udGFnLCAzLiBKdW5pIDIwMjQsIDE0OjE0OjE3IENFU1Qgc2NocmllYiBBbmR5IFlhbjoK
Pj4gPiA+ID4gPiA+IEhpIE5laWw6Cj4+ID4gPiA+ID4gPiAKPj4gPiA+ID4gPiA+IE9uIDYvMy8y
NCAxNjo1NSwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4+ID4gPiA+ID4gPiA+IEhpIENocmlzdGlh
biwKPj4gPiA+ID4gPiA+ID4gCj4+ID4gPiA+ID4gPiA+IE9uIDAxLzA2LzIwMjQgMTU6MTIsIENy
aXN0aWFuIENpb2NhbHRlYSB3cm90ZToKPj4gPiA+ID4gPiA+ID4gPiBUaGUgUkszNTg4IFNvQyBm
YW1pbHkgaW50ZWdyYXRlcyBhIFF1YWQtUGl4ZWwgKFFQKSB2YXJpYW50IG9mIHRoZQo+PiA+ID4g
PiA+ID4gPiA+IFN5bm9wc3lzIERlc2lnbldhcmUgSERNSSBUWCBjb250cm9sbGVyIHVzZWQgaW4g
dGhlIHByZXZpb3VzIFNvQ3MuCj4+ID4gPiA+ID4gPiA+ID4gCj4+ID4gPiA+ID4gPiA+ID4gSXQg
aXMgSERNSSAyLjEgY29tcGxpYW50IGFuZCBzdXBwb3J0cyB0aGUgZm9sbG93aW5nIGZlYXR1cmVz
LCBhbW9uZwo+PiA+ID4gPiA+ID4gPiA+IG90aGVyczoKPj4gPiA+ID4gPiA+ID4gPiAKPj4gPiA+
ID4gPiA+ID4gLgo+PiA+ID4gPiA+ID4gPiAKPj4gPiA+ID4gPiA+ID4gLi4KPj4gPiA+ID4gPiA+
ID4gCj4+ID4gPiA+ID4gPiA+ID4gKiBTQ0RDIEkyQyBEREMgYWNjZXNzCj4+ID4gPiA+ID4gPiA+
ID4gKiBUTURTIFNjcmFtYmxlciBlbmFibGluZyAyMTYwcEA2MEh6IHdpdGggUkdCL1lDYkNyNDo0
OjQKPj4gPiA+ID4gPiA+ID4gPiAqIFlDYkNyNDoyOjAgZW5hYmxpbmcgMjE2MHBANjBIeiBhdCBs
b3dlciBIRE1JIGxpbmsgc3BlZWRzCj4+ID4gPiA+ID4gPiA+ID4gKiBNdWx0aS1zdHJlYW0gYXVk
aW8KPj4gPiA+ID4gPiA+ID4gPiAqIEVuaGFuY2VkIEF1ZGlvIFJldHVybiBDaGFubmVsIChFQVJD
KQo+PiA+ID4gPiA+ID4gPiAtPiBUaG9zZSBmZWF0dXJlcyB3ZXJlIGFscmVhZHkgc3VwcG9ydGVk
IGJ5IHRoZSBIRE1JIDIuMGEgY29tcGxpYW50Cj4+ID4gPiA+ID4gPiA+IEhXLCBqdXN0Cj4+ID4g
PiA+ID4gPiA+IGxpc3QgdGhlIF9uZXdfIGZlYXR1cmVzIGZvciBIRE1JIDIuMQo+PiA+ID4gPiA+
ID4gPiAKPj4gPiA+ID4gPiA+ID4gSSBkaWQgYSBxdWljayByZXZpZXcgb2YgeW91ciBwYXRjaHNl
dCBhbmQgSSBkb24ndCB1bmRlcnN0YW5kIHdoeSB5b3UKPj4gPiA+ID4gPiA+ID4gbmVlZAo+PiA+
ID4gPiA+ID4gPiB0byBhZGQgYSBzZXBhcmF0ZSBkdy1oZG1pLXFwLmMgc2luY2UgeW91IG9ubHkg
bmVlZCBzaW1wbGUgdmFyaWFudHMKPj4gPiA+ID4gPiA+ID4gb2YgdGhlIEkyQwo+PiA+ID4gPiA+
ID4gPiBidXMsIGluZm9mcmFtZSBhbmQgYnJpZGdlIHNldHVwLgo+PiA+ID4gPiA+ID4gPiAKPj4g
PiA+ID4gPiA+ID4gQ2FuIHlvdSBlbGFib3JhdGUgZnVydGhlciA/IGlzbid0IHRoaXMgUXVhZC1Q
aXhlbCAoUVApIFRYIGNvbnRyb2xsZXIKPj4gPiA+ID4gPiA+ID4gdmVyc2lvbgo+PiA+ID4gPiA+
ID4gPiBkZXRlY3RhYmxlIGF0IHJ1bnRpbWUgPwo+PiA+ID4gPiA+ID4gPiAKPj4gPiA+ID4gPiA+
ID4gSSB3b3VsZCBwcmVmZXIgdG8ga2VlcCBhIHNpbmdsZSBkdy1oZG1pIGRyaXZlciBpZiBwb3Nz
aWJsZS4KPj4gPiA+ID4gPiA+IAo+PiA+ID4gPiA+ID4gCj4+ID4gPiA+ID4gPiAKPj4gPiA+ID4g
PiA+IFRoZSBRUCBIRE1JIGNvbnRyb2xsZXIgaXMgYSBjb21wbGV0ZWx5IGRpZmZlcmVudCB2YXJp
YW50IHdpdGggdG90YWxseQo+PiA+ID4gPiA+ID4gZGlmZmVyZW50Cj4+ID4gPiA+ID4gPiByZWdp
c3RlcnMgbGF5b3V0LCBzZWUgUEFUQ0ggMTMvMTQuCj4+ID4gPiA+ID4gPiBJIHRoaW5rIG1ha2Ug
aXQgYSBzZXBhcmF0ZSBkcml2ZXIgd2lsbCBiZSBlYXNpZXIgZm9yIGRldmVsb3BtZW50IGFuZAo+
PiA+ID4gPiA+ID4gbWFpbnRlbmFuY2UuCj4+ID4gPiA+ID4gCj4+ID4gPiA+ID4gSSdtIHdpdGgg
QW5keSBoZXJlLiBUcnlpbmcgdG8gbmF2aWdhdGUgYSBkcml2ZXIgZm9yIHR3byBJUCBibG9ja3Mg
cmVhbGx5Cj4+ID4gPiA+ID4gc291bmRzIHRheGluZyBlc3BlY2lhbGx5IHdoZW4gYm90aCBhcmUg
c28gZGlmZmVyZW50Lgo+PiA+ID4gCj4+ID4gPiBUaGFuayB5b3UgYWxsIGZvciB0aGUgdmFsdWFi
bGUgZmVlZGJhY2shCj4+ID4gPiAKPj4gPiA+ID4gSSBhZ3JlZSwgSSBqdXN0IHdhbnRlZCBtb3Jl
IGRldGFpbHMgdGhhbiAidmFyaWFudCBvZiB0aGUKPj4gPiA+ID4gU3lub3BzeXMgRGVzaWduV2Fy
ZSBIRE1JIFRYIGNvbnRyb2xsZXIiLCBpZiB0aGUgcmVnaXN0ZXIgbWFwcGluZyBpcyAxMDAlCj4+
ID4gPiA+IGRpZmZlcmVudCwgYW5kIGRvZXMgbm90IG1hdGNoIGF0IGFsbCB3aXRoIHRoZSBvbGQg
SVAsIHRoZW4gaXQncyBpbmRlZWQgdGltZQo+PiA+ID4gPiB0byBtYWtlIGEgYnJhbmQgbmV3IGRy
aXZlciwgYnV0IGluc3RlYWQgb2YgZG9pbmcgYSBtaXggdXAsIGl0J3MgdGltZSB0bwo+PiA+ID4g
PiBleHRyYWN0Cj4+ID4gPiA+IHRoZSBkdy1oZG1pIGNvZGUgdGhhdCBjb3VsZCBiZSBjb21tb24g
aGVscGVycyBpbnRvIGEgZHctaGRtaS1jb21tb24gbW9kdWxlCj4+ID4gPiA+IGFuZCB1c2UgdGhl
bS4KPj4gPiA+IAo+PiA+ID4gU291bmRzIGdvb2QsIHdpbGwgaGFuZGxlIHRoaXMgaW4gdjIuCj4+
ID4gPiAKPj4gPiA+ID4gQXMgSSBzZWUsIG5vICJkcml2ZXIiIGNvZGUgY2FuIGJlIHNoYXJlZCwg
b25seSBEUk0gcGx1bWJpbmdzLCBzbyBwZXJoYXBzCj4+ID4gPiA+IHRob3NlCj4+ID4gPiA+IHBs
dW1iaW5nIGNvZGUgc2hvdWxkIGdvIGludG8gdGhlIERSTSBjb3JlID8KPj4gPiA+ID4gCj4+ID4g
PiA+IEluIGFueSBjYXNlLCBwbGVhc2UgYWRkIG1vcmUgZGV0YWlscyBvbiB0aGUgY292ZXIgbGV0
dGVyLCBpbmNsdWRpbmcgdGhlCj4+ID4gPiA+IGRldGFpbGVkCj4+ID4gPiA+IEhXIGRpZmZlcnJl
bmNlIGFuZCB0aGUgZGVzaWduIHlvdSBjaG9zZSBzbyBzdXBwb3J0IHRoaXMgbmV3IElQLgo+PiA+
ID4gCj4+ID4gPiBBbmR5LCBjb3VsZCB5b3UgcGxlYXNlIGhlbHAgd2l0aCBhIHN1bW1hcnkgb2Yg
dGhlIEhXIGNoYW5nZXM/Cj4+ID4gPiBUaGUgaW5mb3JtYXRpb24gSSBjb3VsZCBwcm92aWRlIGlz
IHJhdGhlciBsaW1pdGVkLCBzaW5jZSBJIGRvbid0IGhhdmUKPj4gPiA+IGFjY2VzcyB0byBhbnkg
RFcgSVAgZGF0YXNoZWV0cyBhbmQgSSdtIGFsc28gbm90IGZhbWlsaWFyIGVub3VnaCB3aXRoIHRo
ZQo+PiA+ID4gb2xkIHZhcmlhbnQuCj4+ID4gPiAKPj4gPiAgIEFjY3VyYXRlbHksIHdlIHNob3Vs
ZCByZWZlciB0byBpdCBhcyBhbiBlbnRpcmVseSBuZXcgSVDvvIxpdCBoYXMgbm90aGluZyBpbiBj
b21tb24gd2l0aAo+PiA+IHRoZSBjdXJyZW50IG1haW5saW5lIGR3LWhkbWnjgIIgVGhlIG9ubHkg
IGNvbW1vbmFsaXR5IGlzIHRoYXQgdGhleSBib3RoIGNvbWUgZnJvbQo+PiA+IFN5bm9wc3lzIERl
c2lnbldhcmXvvJoKPj4gPiDvvIgx77yJSXQgaGFzIGEgMTAwJSBkaWZmZXJlbnQgcmVnaXN0ZXIg
bWFwcGluZwo+PiA+IO+8iDLvvIlJdCBzdXBwb3J0cyBGUkwgYW5kIERTQwo+PiA+IO+8iDPvvIlk
aWZmZXJlbnQgY29uZmlndXJhdGlvbiBmbG93IGluIG1hbnkgcGxhY2Vz44CCCj4+ID4gCj4+ID4g
U28gSSBoYXZlIHRoZSBzYW1lIGZlZWxpbmcgd2l0aCBIZWlrbyBhbmQgTWF4aW1l77yaCj4+ID4g
VGhlIERXX0hETUlfUVAgc2hvdWxkIGhhdmUgYSAgc2VwYXJhdGUgZHJpdmVyIGFuZCB3aXRoIGl0
J3MgIG93biBDT05GSUcgIHN1Y2ggYXMgRFJNX0RXX0hETUlfUVAgIGluIEtjb25maWcuCj4+ID4g
YW5kIHRoZSByb2NrY2hpcCBwYXJ0IHNob3VsZCBhbHNvIGJlIHNwbGl0IGZyb20gZHdfaGRtaS1y
b2NrY2hpcC5jLgo+PiA+IEkgYW0gc29ycnkgd2UgbWl4ZWQgdGhlbSBpbiBkd19oZG1pLXJvY2tj
aGlwLmMgd2hlbiB3ZSBkZXZlbG9wIHRoZSBic3AgZHJpdmVy77yMYnV0IHdlIHJlYWxseSByZWdy
ZXR0ZWQgdGhpcyBkZWNpc2lvbgo+PiA+IHdoZW4gIHdlIHJlcGVhdGVkbHkgYnJva2UgY29tcGF0
aWJpbGl0eSB3aXRoIGR3LWhkbWkgb24gb3RoZXIgc29jc+OAggo+PiAKPj4gWWVzIHBsZWFzZSwg
YW5kIGFzIEkgc2F5LCBpZiB0aGVyZSdzIGNvZGUgY29tbW9uIHdpdGggdGhlIG9sZCBkdy1oZG1p
LCBwbGVhc2UgYWRkIGEgY29tbW9uCj4+IG1vZHVsZSBpZiB0aGlzIGNvZGUgY2FuJ3QgYmUgbW92
ZWQgaW4gY29yZSBicmlkZ2UgaGVscGVycy4KPgo+QW5kIGNoYW5jZXMgYXJlIHRoYXQgdGhlIGNv
bW1vbiBjb2RlIGlzIGFjdHVhbGx5IHRoZXJlIHRvIGRlYWwgd2l0aCBIRE1JCj5zcGVjIGl0c2Vs
ZiBhbmQgbm90IHJlYWxseSB0aGUgaGFyZHdhcmUsIHdoaWNoIGlzIHNvbHZlZCBieSBtb3Zpbmcg
Ym90aAo+ZHJpdmVycyB0byB0aGUgSERNSSBoZWxwZXJzIHRoYXQganVzdCBnb3QgbWVyZ2VkLgo+
CgpZZXMsICsxLgpJIGRvbid0IHRoaW5rIHdlIG5lZWQgdG8gc2hhcmUgc29tZSBjb21tb24gY29k
ZSB3aXRoIGR3LWhkbWkgaGVyZS4KCj5NYXhpbWUKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
