Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E8DAC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 16:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R400VU1raVWQm91oAGe8/wkrvZMBHfk6Ucs3hA5aWOI=; b=vAX3FPjz+ZCpbv
	DhwAv/OIpCKE5gl7JYq/mtBxJIeBPSE2AKOdtFJLbTYv5roT57QogAyJSkasoCfVTWJyg512j3lZx
	Yl4S2TPL98tsVPjJMnAxnQXQN4/FuKRNI98jIzZGTfpQIdf3caWZM+lN9oTtxpw6Yu4fI35unQaJU
	4w8MFajUH3WeZJJUHn8HYT7jHt+1YtpT3XuaCH9uG/Ggw8hJcoyQi1MBznNiHrGA+dJObF17jLq4X
	N183ASbcHIO0AYnAQBtqybA8/ErOmZBTBSQ3QfDEtwGPjwJHL+VjUW2TBz1HgZc0rUNlMNKIVbpeT
	dP8ukHf9Uy7/EMO/vJyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0d9-0000000GXPk-1Wl8;
	Mon, 05 Aug 2024 16:32:19 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0cb-0000000GXDk-2P4z;
	Mon, 05 Aug 2024 16:31:47 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-52efbb55d24so16610804e87.1;
        Mon, 05 Aug 2024 09:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722875503; x=1723480303; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=621xkAoDI4+8AtZyzmI5ne9j+EyrefU8aEvGSj0OzNs=;
        b=f2ix2TkCKrc2MXDtNSzeBNENyRMavcClNssTrD8P/I+qaJ2oWVGaiDQdLx4CFA+lmn
         QpZ63fWCVp2VaGDf4o8j1MhM7CFIdfpltguR8PT6EnA5zyXs0aO2lzrlKNPYk7UaXkt2
         fEpDAXC9WfNCOWN4VvMLrFto6eUQ8UWwfI4YgBdu/DLNAtRaXAY80e7YSftbxJ3HJ8kd
         yQ3bebSBwQGdqKUGxagCRvdnc03v6mFCnHvKQ7jGzA8U6pDtEexaSIBn4Tm/EVCTioi3
         wWlJGbA8mLReJgwJTi09+cVGuqA9UWZ0cN9Sxg7XmIHvkIctYkKHrsJRLACMjqKwcIWe
         Xnzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722875503; x=1723480303;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=621xkAoDI4+8AtZyzmI5ne9j+EyrefU8aEvGSj0OzNs=;
        b=S6LT2/vgqYosGG4xLPX6PoVFgHx2NClZyjism1PK/BOEbwHRrMDGIh0XVt35lSAgI3
         RC9uhVFzsozwrYZ+4zwEfNuPD9fV916x5jEbM46LF+xgztou/ez9LNegEF/wz0sN5zpL
         NhdYbbInd2bxamEEVtESDUAGD69XAzzGNnV0r82P6dWnNHDWHNohtbkR5Qj3yDMBZkzP
         imEtC7m2Ux1CnKJvEwil3MQm5ERv8WFt5hYWhotT9eP1H5xW6kGpuDjfV0++HIDU4e7Y
         th5Z9ISRvbI5GGw2H+eLFzIjb3qceYPjO36dZGFIc3XLb48bVaDvll2MAjLHvimktb/A
         rK2w==
X-Forwarded-Encrypted: i=1; AJvYcCXyoDcUxp2lxlLJHzBiweKXZd/iXXPREmUgyoza9juKERrOb+SOvpyD/cjz9Qvw+FVejrMNZVZtKquPon0IUXxkYnPolnF6eO+3jlZa2eUf9LNdoHX9J7Q4oysmoqOOQjjZQ5ia8306kHsKQyAgtkzTKJ9gPGzg4ds=
X-Gm-Message-State: AOJu0YzgHb51XZPV2cdcOi5H1dZ5C4XSm9pOHT5SMR70qqsEDt1rdp1l
	RIxFFcrYxKBCbMRq3SdJu5nJ145fg7vtmaRPVetTwrklku594oy6
X-Google-Smtp-Source: AGHT+IEYeJQFHMlgEBC1z/7yaKc6FQUSGQKUjy5BVK+bmjwpTIsHWavy//z1nw11/GNeOkDWpg0JeA==
X-Received: by 2002:a05:6512:3b89:b0:52c:cd77:fe03 with SMTP id 2adb3069b0e04-530bb380dabmr10072630e87.14.1722875502321;
        Mon, 05 Aug 2024 09:31:42 -0700 (PDT)
Received: from smtpclient.apple (84-10-100-139.static.chello.pl. [84.10.100.139])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-530bba08ee0sm1194849e87.57.2024.08.05.09.31.40
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Aug 2024 09:31:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.600.62\))
Subject: Re: [PATCH v2 0/3] Add initial support for the Rockchip RK3588 HDMI
 TX Controller
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <66b0fbcc.050a0220.30fac7.71ce@mx.google.com>
Date: Mon, 5 Aug 2024 18:31:28 +0200
Message-Id: <B669ED19-28D8-4C4E-B89C-F7E7A6E3AA65@gmail.com>
References: <20240801-b4-rk3588-bridge-upstream-v2-0-9fa657a4e15b@collabora.com>
 <45B07EAF-4CBA-4DE4-A03B-109767D52B29@gmail.com>
 <66b0fbcc.050a0220.30fac7.71ce@mx.google.com>
To: Chris Morgan <macroalpha82@gmail.com>
X-Mailer: Apple Mail (2.3774.600.62)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_093145_742193_56C21DB5 
X-CRM114-Status: GOOD (  30.22  )
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
Cc: Algea Cao <algea.cao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Luis de Arquer <ldearquer@gmail.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>, Alexandre ARNOUD <aarnoud@me.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Mark Yao <markyao0591@gmail.com>, linux-arm-kernel@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IENocmlzIE1vcmdhbiA8bWFjcm9hbHBoYTgy
QGdtYWlsLmNvbT4gdyBkbml1IDA1LjA4LjIwMjQsIG8gZ29kei4gMTg6MjA6Cj4gCj4gT24gU2F0
LCBBdWcgMDMsIDIwMjQgYXQgMDM6MjQ6MDZQTSArMDIwMCwgUGlvdHIgT25pc3pjenVrIHdyb3Rl
Ogo+PiBIaSBDcmlzdGlhbiwKPj4gCj4+IFdpbGwgeW91IGZpbmQgc29tZSB0aW1lIGFuZCBtb3Rp
dmF0aW9uIHRvIGFkZCBDRUMgc3VwcG9ydCB0byBRdWFkLVBpeGVsIChRUCkgVFggY29udHJvbGxl
ciA/Cj4+IAo+PiBQcm9iYWJseSB5b3UgcmVjYWxsIC0gSSBhZGRlZCBpbml0aWFsIENFQyBzdXBw
b3J0IHRvIHlvdXJzIHYxIHNlcmllcyBhbmQgaeKAmW0gc3R1Y2sgd2l0aCB0aW1pbmcgaXNzdWUg
KGNlYyBwdWxzZXMgYXJlIDN4IHRvbyBsb25nKS4KPj4gRm9yIG1lIGl0IGxvb2tzIGxpa2UgY2xv
Y2sgaXNzdWUuCj4+IEnigJltIG91dCBvZiBpZGVhcyBob3cgdG8gbW92ZSBmb3J3YXJkIHdpdGgg
dGhpcyB0aW1taW5nIGlzc3Vl4oCmLgo+IAo+IEkgd29uZGVyIGlmIHVzaW5nIHRoZSBjZWMtZ3Bp
byBvbiAiR1BJTzQgUktfUEMxIiBmb3IgdGhlIENFQyBncGlvIGFuZAo+ICJHUElPMSBSS19QQTUi
IGZvciB0aGUgSFBEIGdwaW8gaXMgYSBwb3NzaWJpbGl0eT8gSnVzdCBhIHRob3VnaHQuCj4gCj4g
Q2hyaXMKCkNocmlzLApPc2NpbGxvc2NvcGUgc2hvd3MgcHVsc2VzIG9uIGNlYyBsaW5lIC0gaXNz
dWUgaXMgdGhhdCBjZWMgcHVsc2VzIG9ic2VydmVkIG9uIG9zY2lsbG9zY29wZSBoYXZlIHRpbWlu
Z3MgMiw5IHRpbWVzIGxvbmdlciB0aGF0IHNob3VsZCBiZSAoc3RhcnQgYml0IGlzIDEwLDdtUyBp
bnN0ZWFkIG9mIDMuNjsgemVybyBpcyA0LjQgaW5zdGVhZCAxLjUgd2hpbGUgb25lIGlzIDEsNyBp
bnN0ZWFkIG9mIDAuNikuClB1bHNlcyBkdXJhdGlvbnMgc2VlbXMgdG8gYmUg4oCecHJvcG9ydGlv
bmFsIiAoc3RhcnQ7IHplcm87IG9uZSkgLSBhbGwgYXJlIGFsbW9zdCBleGFjdCAyLjl4IHRvbyBs
b25nLiAKRm9yIG1lIHRoaXMgc291bmRzIGxpa2Ugd3JvbmcgY2xvY2sgaXNzdWUuCkkgY2FuIHRy
eSBzd2l0Y2ggdG8gZ3BpbyBvdXRzIC0gYnV0IEkgdGhpbmsgYmV0dGVyIGlzIHRvIGZpcnN0IG1h
a2Ugc3VyZSB0aGF0IGNlYyBjbG9jayBpcyBzZXQgb2suCkltIG5vdCBzdXJlIHdoYXQgaXMgYmVz
dCB3YXkgdG8gZG8gc3VjaCBjZWMgY2xvY2sgY2hlY2suLi4gICAKIAo+IAo+PiAKPj4gCj4+IAo+
Pj4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlh
bi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4gdyBkbml1IDAxLjA4LjIwMjQsIG8gZ29kei4gMDQ6
MjU6Cj4+PiAKPj4+IFRoZSBSb2NrY2hpcCBSSzM1ODggU29DIGZhbWlseSBpbnRlZ3JhdGVzIHRo
ZSBTeW5vcHN5cyBEZXNpZ25XYXJlIEhETUkKPj4+IDIuMSBRdWFkLVBpeGVsIChRUCkgVFggY29u
dHJvbGxlciBbNF0sIHdoaWNoIGlzIGEgbmV3IElQIGJsb2NrLCBxdWl0ZQo+Pj4gZGlmZmVyZW50
IGZyb20gdGhvc2UgdXNlZCBpbiB0aGUgcHJldmlvdXMgZ2VuZXJhdGlvbnMgb2YgUm9ja2NoaXAg
U29Dcy4KPj4+IAo+Pj4gVGhpcyBpcyB0aGUgbGFzdCBjb21wb25lbnQgdGhhdCBuZWVkcyB0byBi
ZSBzdXBwb3J0ZWQgaW4gb3JkZXIgdG8gZW5hYmxlCj4+PiB0aGUgSERNSSBvdXRwdXQgZnVuY3Rp
b25hbGl0eSBvbiB0aGUgUkszNTg4IGJhc2VkIFNCQ3MsIHN1Y2ggYXMgdGhlCj4+PiBSQURYQSBS
b2NrIDVCLiBUaGUgb3RoZXIgY29tcG9uZW50cyBhcmUgdGhlIFZpZGVvIE91dHB1dCBQcm9jZXNz
b3IKPj4+IChWT1AyKSBhbmQgdGhlIFNhbXN1bmcgSVAgYmFzZWQgSERNSS9lRFAgVFggQ29tYm8g
UEhZLCBmb3Igd2hpY2ggYmFzaWMKPj4+IHN1cHBvcnQgaGFzIGJlZW4gYWxyZWFkeSBtYWRlIGF2
YWlsYWJsZSB2aWEgWzFdIGFuZCBbMl0sIHJlc3BlY3RpdmVseS4KPj4+IAo+Pj4gUGxlYXNlIG5v
dGUgdGhpcyBpcyBhIHJld29ya2VkIHZlcnNpb24gb2YgdGhlIG9yaWdpbmFsIHNlcmllcywgd2hp
Y2gKPj4+IHJlbGllZCBvbiBhIGNvbW1vbml6ZWQgZHctaGRtaSBhcHByb2FjaC4gIFNpbmNlIHRo
ZSBnZW5lcmFsIGNvbnNlbnN1cwo+Pj4gd2FzIHRvIGhhbmRsZSBpdCBhcyBhbiBlbnRpcmVseSBu
ZXcgSVAsIEkgZHJvcHBlZCBhbGwgcGF0Y2hlcyByZWxhdGVkIHRvCj4+PiB0aGUgb2xkIGR3LWhk
bWkgYW5kIFJvY2tjaGlwIGdsdWUgY29kZSAtIGEgZmV3IG9mIHRoZW0gbWlnaHQgc3RpbGwgbWFr
ZQo+Pj4gc2Vuc2UgYXMgZ2VuZXJhbCBpbXByb3ZlbWVudHMgYW5kIHdpbGwgYmUgc3VibWl0dGVk
IHNlcGFyYXRlbHkuCj4+PiAKPj4+IEFkZGl0aW9uYWxseSwgYXMgc3VnZ2VzdGVkIGJ5IE5laWws
IEkndmUgc2VudCB0aGUgcmV3b3JrZWQgYnJpZGdlIGRyaXZlcgo+Pj4gYXMgYSBzZXBhcmF0ZSBw
YXRjaHNldCBbNF0sIGhlbmNlIHRoaXMgc2VyaWVzIGhhbmRsZXMgbm93IGp1c3QgdGhlIG5ldwo+
Pj4gUm9ja2NoaXAgUVAgcGxhdGZvcm0gZHJpdmVyLgo+Pj4gCj4+PiBJdCdzIHdvcnRoIG1lbnRp
b25pbmcgdGhlIEhETUkgb3V0cHV0IHN1cHBvcnQgaXMgY3VycmVudGx5IGxpbWl0ZWQgdG8KPj4+
IFJHQiBvdXRwdXQgdXAgdG8gNEtANjBIeiwgd2l0aG91dCBhdWRpbywgQ0VDIG9yIGFueSBvZiB0
aGUgSERNSSAyLjEKPj4+IHNwZWNpZmljIGZlYXR1cmVzLiAgTW9yZW92ZXIsIHRoZSBWT1AyIGRy
aXZlciBpcyBub3QgYWJsZSB0byBwcm9wZXJseQo+Pj4gaGFuZGxlIGFsbCBkaXNwbGF5IG1vZGVz
IHN1cHBvcnRlZCBieSB0aGUgY29ubmVjdGVkIHNjcmVlbnMsIGUuZy4gaXQKPj4+IGRvZXNuJ3Qg
Y29wZSB3aXRoIG5vbi1pbnRlZ2VyIHJlZnJlc2ggcmF0ZXMuCj4+PiAKPj4+IEEgcG9zc2libGUg
d29ya2Fyb3VuZCBjb25zaXN0cyBvZiBlbmFibGluZyB0aGUgZGlzcGxheSBjb250cm9sbGVyIHRv
Cj4+PiBtYWtlIHVzZSBvZiB0aGUgY2xvY2sgcHJvdmlkZWQgYnkgdGhlIEhETUkgUEhZIFBMTC4g
VGhpcyBpcyBzdGlsbCB3b3JrCj4+PiBpbiBwcm9ncmVzcyBhbmQgd2lsbCBiZSBzdWJtaXR0ZWQg
bGF0ZXIsIGFzIHdlbGwgYXMgdGhlIHJlcXVpcmVkIERUUwo+Pj4gdXBkYXRlcy4KPj4+IAo+Pj4g
VG8gZmFjaWxpdGF0ZSB0ZXN0aW5nIGFuZCBleHBlcmltZW50YXRpb24sIGFsbCBIRE1JIG91dHB1
dCByZWxhdGVkCj4+PiBwYXRjaGVzLCBpbmNsdWRpbmcgdGhvc2UgcGFydCBvZiB0aGlzIHNlcmll
cywgYXMgd2VsbCBhcyB0aGUgYnJpZGdlCj4+PiBkcml2ZXIsIGFyZSBhdmFpbGFibGUgYXQgWzNd
Lgo+Pj4gCj4+PiBTbyBmYXIgSSBjb3VsZCBvbmx5IHZlcmlmeSB0aGlzIG9uIHRoZSBSQURYQSBS
b2NrIDVCIGJvYXJkLgo+Pj4gCj4+PiBUaGFua3MsCj4+PiBDcmlzdGlhbgo+Pj4gCj4+PiBbMV06
IDVhMDI4ZThmMDYyZiAoImRybS9yb2NrY2hpcDogdm9wMjogQWRkIHN1cHBvcnQgZm9yIHJrMzU4
OCIpCj4+PiBbMl06IDU1M2JlMjgzMGM1ZiAoInBoeTogcm9ja2NoaXA6IEFkZCBTYW1zdW5nIEhE
TUkvZURQIENvbWJvIFBIWSBkcml2ZXIiKQo+Pj4gWzNdOiBodHRwczovL2dpdGxhYi5jb2xsYWJv
cmEuY29tL2hhcmR3YXJlLWVuYWJsZW1lbnQvcm9ja2NoaXAtMzU4OC9saW51eC8tL2NvbW1pdHMv
cmszNTg4LWhkbWktYnJpZGdlLXY2LjExLXJjMQo+Pj4gWzRdOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9sa21sLzIwMjQwODAxLWR3LWhkbWktcXAtdHgtdjEtMC0xNDhmNTQyZGU1ZmRAY29sbGFi
b3JhLmNvbS8KPj4+IAo+Pj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlz
dGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4gQ2hhbmdlcyBpbiB2MjoK
Pj4+IC0gUmV3b3JrZWQgdGhlIGdsdWUgY29kZSBmb3IgUkszNTg4IGludG8gYSBuZXcgUm9ja2No
aXAgcGxhdGZvcm0gZHJpdmVyCj4+PiAtIE1vdmVkIGJyaWRnZSBkcml2ZXIgcGF0Y2hlcyB0byBh
IHNlcGFyYXRlIHNlcmllcyBbNF0KPj4+IC0gRHJvcHBlZCBhbGwgdGhlIHBhdGNoZXMgdG91Y2hp
bmcgdG8gdGhlIG9sZCBkdy1oZG1pIGFuZCBSSyBwbGF0Zm9ybQo+Pj4gZHJpdmVycwo+Pj4gLSBB
ZGRlZCBjb25uZWN0b3IgY3JlYXRpb24gdG8gZW5zdXJlIHRoZSBIRE1JIFFQIGJyaWRnZSBkcml2
ZXIgZG9lcyBvbmx5Cj4+PiBzdXBwb3J0IERSTV9CUklER0VfQVRUQUNIX05PX0NPTk5FQ1RPUgo+
Pj4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjQwNjAxLWI0LXJr
MzU4OC1icmlkZ2UtdXBzdHJlYW0tdjEtMC1mNjIwMzc1MzIzMmJAY29sbGFib3JhLmNvbQo+Pj4g
Cj4+PiAtLS0KPj4+IENyaXN0aWFuIENpb2NhbHRlYSAoMyk6Cj4+PiAgICAgZHQtYmluZGluZ3M6
IGRpc3BsYXk6IHJvY2tjaGlwOiBBZGQgc2NoZW1hIGZvciBSSzM1ODggSERNSSBUWCBDb250cm9s
bGVyCj4+PiAgICAgZHJtL3JvY2tjaGlwOiBFeHBsaWNpdGx5IGluY2x1ZGUgYml0cyBoZWFkZXIK
Pj4+ICAgICBkcm0vcm9ja2NoaXA6IEFkZCBiYXNpYyBSSzM1ODggSERNSSBvdXRwdXQgc3VwcG9y
dAo+Pj4gCj4+PiAuLi4vZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxkdy1oZG1pLXFwLnlhbWwg
ICAgICB8IDE4OCArKysrKysrKysKPj4+IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmln
ICAgICAgICAgICAgICAgICAgIHwgICA4ICsKPj4+IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9N
YWtlZmlsZSAgICAgICAgICAgICAgICAgIHwgICAxICsKPj4+IGRyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9kd19oZG1pX3FwLXJvY2tjaGlwLmMgICAgIHwgNDMwICsrKysrKysrKysrKysrKysrKysr
Kwo+Pj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYyAgICAgICAg
fCAgIDIgKwo+Pj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuaCAg
ICAgICAgfCAgIDQgKy0KPj4+IDYgZmlsZXMgY2hhbmdlZCwgNjMyIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPj4+IC0tLQo+Pj4gYmFzZS1jb21taXQ6IDE2MTNlNjA0ZGYwY2QzNTljZjJh
N2ZiZDliZTdhMGJjZmFjZmFiZDAKPj4+IGNoYW5nZS1pZDogMjAyNDA2MDEtYjQtcmszNTg4LWJy
aWRnZS11cHN0cmVhbS1hMjdiYWZmMWI4ZmMKPj4+IAo+Pj4gCj4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0Cj4+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+PiBodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4+IAo+
PiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
