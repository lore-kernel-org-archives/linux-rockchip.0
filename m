Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA1F4C44508
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 08:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D26YtLf907KEmGqhE4Fu8cZFhcvFT8PJOy55ek7OnTk=; b=PK7+eNwa2Ut2ov
	pCsoMWLVyIjBg/jom2n44UbJ8x9pkaQTJ2sGZUq22Om6hHDxy9JaHZcnEmkun1oBWyixw9hesOscs
	8bEPSuiqXs6JhAuWi7UOrNH5qzCDXRC399sgJwLDmNr/Gdit9UPkGYJ7HwD5BnmzoQpDbK5DZkFKr
	/M6dOyYjXGaJXs3ckUUz8Y6u86zI2t8danU1QOI8BrckwamO0KGVw7nNhIeNpHQLtLuwM8quXXmge
	IJSg2xS4qIjUiDI++4vqHNjuOzPQn5yHG/cj1nQycfntDiix68ZQI4E3DIybaoQkAPYS0VS7BTS1X
	vOVzySlXfvOESzl7U5sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjvEQ-0000000EBkG-1GYA;
	Wed, 15 Jul 2026 08:44:42 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjvEM-0000000EBio-37nu
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jul 2026 08:44:40 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-493c7902f47so44445615e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jul 2026 01:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784105076; x=1784709876; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:subject:cc:to:from:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=6hz7WPKd8nuv0g834JzI7w/vUzS6TIu2DOFmMdBw0Pc=;
        b=IHeGtjFgKxM6wKVJvCWg7Ty4ehybxlanCY0XsAEbxoyAyiejUhZiJCEUdutd85Dvkr
         QiOgSrfXHBOKturb3CWS90kY3PcHs0tPx9+Tkf/SVb5FAsYYYDR6Ay9Gh0DkcXRDa9jk
         sf0Nf8uoKvZf5hqvzMAw6duNkzdUVLykDfAPM4iYpoJ0f4GnR67PnQFvKRjEhNHSvki+
         UIrrVKj8Hx1PpZtp9u/YxDNA+JsFjL4H+I4zhTfiRtiK9qPYvpZSYQfkWOtye32ZH4eD
         l6FBmnq4JQR2h1Zfbv2owEnD9RtKPz5O35l60Cf54YVXl+rbtd/CRYJSOOV/bcgnBe6h
         js+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784105076; x=1784709876;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:subject:cc:to:from:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6hz7WPKd8nuv0g834JzI7w/vUzS6TIu2DOFmMdBw0Pc=;
        b=RfFmo8jXoEHbJwAxOcx2KTpSd/TiIsod9PvcKi2WaBeWgyKHEapI3IcSfBrX8OW3ZF
         L/N6O+j0uRXxYIHfv4WRkHqdSAssFglBLGAgQmx4WjbeZLQwtwTda0ggVSrj7miZV5v9
         JWtBQp/roRtH+GAyqFnc5Wi3eO0pwCuJjJpUaUvt0VwyCkkgfpzRujiU6ljR/n1CNSqL
         lhnjF9lKSaDlUJGZdkqZwrGwKeT+099IeQJNp5vc85GbairPgLCnnn8DpBlOcbOTMsyF
         snoE6m3Ul6BPhAeb4/jaMI+cb0MYG3vuTllPZjX6wxGcc/aop0pg/hi0n/k8UnwkbRxw
         GmWw==
X-Forwarded-Encrypted: i=1; AHgh+RrL8Zc/BAcj79BpHO2b1H9l+7TlEHc/5Jp5Lk93Ebp/U8mafofRUpJZu6qmLdFlpNEoglKxpESFLUYBJ3Y4lg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyLQ885h0rjBaFblw/NzV6BOEcqywLhsMyMxI36cH4CktJdZiet
	quRpSILDmkZkVUF31rnBkvn8VnhzGHJrvtytqprwroRSqxfzYZ3+QgA4
X-Gm-Gg: AfdE7cn+3Hz2l4enwIJZCGZWuI60JDYRWqdFgzXvfTer8WLCncWZtRPkbr0n5HiqlQn
	9pva7h6eCyJkEAkmnHDE2P0sNGbWPZcVgesOHWNU7bqk2xHmoXy/qyKsujw2oGumuDL3LSvkqj0
	kOmBOU6lCChwyfur6XokxIXewHuLhDDxdKG/v8EngRVx31SP8JQfYS/wmmCcpG1GkM5JFAcjVtN
	x/hHti5GEB39WqN5qlMbD+yM5MPzmFI92n2j9jaROFAd9Ej9JAlHgy7fjtqTjChk6Uu/fnLln9t
	pckugg24QfyhluMcngQfkVJpl7f709Sw9QGedMj4IYRGP61tLSbeg75L5IPMRcjnF1cO9rcqh4B
	ltG7iHA0W43dzAxEjuU4dmfyksJu1K/GcIPcJpoI0+gNy9G6es+DErpoFzQCtJNpb67TsquXgS0
	O+243x1yzc7BM5TNaMQCtwiAoCB5ELCF9cvE9t8k+8bAvy
X-Received: by 2002:a7b:c38b:0:b0:493:c4e1:40a6 with SMTP id 5b1f17b1804b1-4953c28b6bdmr14477935e9.32.1784105076212;
        Wed, 15 Jul 2026 01:44:36 -0700 (PDT)
Received: from Ansuel-XPS. (93-34-89-239.ip49.fastwebnet.it. [93.34.89.239])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4953f643acdsm3214055e9.3.2026.07.15.01.44.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 01:44:35 -0700 (PDT)
Message-ID: <6a574873.3027643f.39eab0.b4c0@mx.google.com>
X-Google-Original-Message-ID: <aldIcfPxkeociXyX@Ansuel-XPS.>
Date: Wed, 15 Jul 2026 10:44:33 +0200
From: Christian Marangi <ansuelsmth@gmail.com>
To: Coia Prant <coiaprant@gmail.com>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, kuba@kernel.org,
	davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
	andrew+netdev@lunn.ch, robh@kernel.org, krzk+dt@kernel.org,
	heiko@sntech.de, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH 01/10] net: stmmac: move XPCS lifetime management to
 platform drivers
References: <20260714191341.690906-1-coiaprant@gmail.com>
 <20260714191341.690906-2-coiaprant@gmail.com>
 <dc21b2fc-ae11-4fde-a5b9-09e2c6bee5c9@bootlin.com>
 <CALj3r0gWyfHHp0S4=71M1-TjgHKcgGax4Lr0DzPi37Q69-iCwA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALj3r0gWyfHHp0S4=71M1-TjgHKcgGax4Lr0DzPi37Q69-iCwA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_014438_943493_9272BCE7 
X-CRM114-Status: GOOD (  31.58  )
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

T24gV2VkLCBKdWwgMTUsIDIwMjYgYXQgMDQ6MTc6NTBQTSArMDgwMCwgQ29pYSBQcmFudCB3cm90
ZToKPiBNYXhpbWUgQ2hldmFsbGllciA8bWF4aW1lLmNoZXZhbGxpZXJAYm9vdGxpbi5jb20+IOS6
jjIwMjblubQ35pyIMTXml6XlkajkuIkgMTU6MzHlhpnpgZPvvJoKPiA+Cj4gPiBIaSwKPiA+Cj4g
PiArQ2hyaXN0aWFuCj4gPgo+ID4gT24gNy8xNC8yNiAyMTowOCwgQ29pYSBQcmFudCB3cm90ZToK
PiA+ID4gVGhlIGN1cnJlbnQgWFBDUyBjcmVhdGlvbiBsb2dpYyBpbiBzdG1tYWNfcGNzX3NldHVw
KCkgaXMgcHJvYmxlbWF0aWMKPiA+ID4gZm9yIHNldmVyYWwgcmVhc29ucy4KPiA+ID4KPiA+ID4g
Rmlyc3QsIGlmIGEgZGV2aWNlIHRyZWUgc3BlY2lmaWVzIGEgInBjcy1oYW5kbGUiIGJ1dCBubyBz
ZWxlY3RfcGNzKCkKPiA+ID4gY2FsbGJhY2sgaXMgcHJvdmlkZWQgYnkgdGhlIHBsYXRmb3JtIGRy
aXZlciwgdGhlIGNyZWF0ZWQgWFBDUyBpcyBuZXZlcgo+ID4gPiB1c2VkLiBUaGUgcGh5bGluayBm
cmFtZXdvcmsgcmVxdWlyZXMgc2VsZWN0X3BjcygpIHRvIGFjdHVhbGx5IHJldHVybgo+ID4gPiB0
aGUgUENTIHRvIHRoZSBjb3JlLCBzbyB0aGUgcGNzLWhhbmRsZSBwcm9wZXJ0eSBiZWNvbWVzIGVm
ZmVjdGl2ZWx5Cj4gPiA+IHVzZWxlc3Mgd2l0aG91dCB0aGUgbWF0Y2hpbmcgY2FsbGJhY2suIFRo
aXMgaXMgY29uZnVzaW5nIGZvciBkZXZlbG9wZXJzCj4gPiA+IHdobyBleHBlY3QgdGhhdCBzcGVj
aWZ5aW5nIGEgcGNzLWhhbmRsZSBpbiB0aGVpciBkZXZpY2UgdHJlZSBzaG91bGQgYmUKPiA+ID4g
c3VmZmljaWVudCB0byBlbmFibGUgdGhlIFBDUy4KPiA+Cj4gPiBJIHRoaW5rIENocmlzdGlhbidz
IHdvcmsgb24gZndub2RlIFBDUyB3b3VsZCBoZWxwIGEgbG90IHdpdGggdGhhdCBQQ1MKPiA+IGhh
bmRsaW5nIGluIHN0bW1hYzoKPiA+Cj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYv
MjAyNjA2MTgxMjU3NTIuMTIyMy0xLWFuc3VlbHNtdGhAZ21haWwuY29tLwo+ID4KPiA+IEkgZG9u
J3Qga25vdyB3aGVuIENocmlzdGlhbiBwbGFucyB0byBpdGVyYXRlLCBpdCBjb3VsZCBiZSB3b3J0
aCB1c2luZwo+ID4gdGhhdCBuZXcgZndub2RlIG1lY2hhbmlzbSBoZXJlID8KPiA+Cj4gPiBNYXhp
bWUKPiAKPiBIaSBNYXhpbWUsCj4gCj4gVGhhbmtzIGZvciBwb2ludGluZyBtZSB0byBDaHJpc3Rp
YW4ncyB3b3JrLiBUaGlzIGxvb2tzIGxpa2UgYQo+IG11Y2gtbmVlZGVkIGltcHJvdmVtZW50Lgo+
IAo+IEkgYWN0dWFsbHkgc3BlbnQgYWxsIG5pZ2h0IGRlYnVnZ2luZyBjYWxsIHRyYWNlcyBjYXVz
ZWQgYnkgdGhlIGN1cnJlbnQKPiBzdG1tYWMgUENTIGxpZmV0aW1lIG1hbmFnZW1lbnQsIGFuZCBp
dCB3YXMgbm90IGEgcGxlYXNhbnQgZXhwZXJpZW5jZS4KPiBUaGUgY29kZSBmZWVscyBsaWtlIGFj
Y3VtdWxhdGVkIHRlY2huaWNhbCBkZWJ0IHRoYXQgc2hvdWxkIGJlIGNsZWFuZWQKPiB1cC4KPgoK
WWVzIHdlIGFsc28gZ290IGEgc2ltaWxhciBzaXR1YXRpb24gd2l0aCBhbiBpcHE1MHh4IFNvQyB3
aGVyZSB0aGUKc3RhbmRhbG9uZSBQQ1MgZmVhdHVyZSB3YXMgaW1wbGVtZW50ZWQgKEkgY2FuIGFk
ZCByZWZlcmVuY2UgdG8gT3BlbldydApjb2RlKSBhbmQgd2UgYWxzbyBoYWQgc29tZSAiIm1hZ2lj
IiIgY29kZSB0byBpbXBsZW1lbnQgUENTIGFzIGl0IGRvZXMgdXNlCnRoZSBEV01BQyBwbGF0LiBJ
dCBzZWVtcyBmb3IgRFdNQUMgUENTIGlzIHZlcnkgYWJzdHJhY3RlZCBhbmQgaGF2ZSBhdCBsZWFz
dAozIGRpZmZlcmVudCBpbXBsZW1lbnRhdGlvbiBhc2lkZSBmcm9tIHRoZSBjb21tb24gInNlbGVj
dF9wY3MiIG9uZS4KIAo+IFJlZ2FyZGluZyB0aW1lbGluZTogc2luY2UgQ2hyaXN0aWFuJ3Mgc2Vy
aWVzIGlzIHN0aWxsIGluIFJGQyB3aXRoIGFuCj4gdW5jZXJ0YWluIG1lcmdlIGRhdGUsIEknZCBw
cmVmZXIgdG8ga2VlcCB0aGlzIHNlcmllcyBhcy1pcyBmb3Igbm93LCBhcwo+IGl0IHNvbHZlcyB0
aGUgcHJvYmxlbSBmb3IgUm9ja2NoaXAgYW5kIGhhcyBhbHJlYWR5IHN0YXJ0ZWQgcmVjZWl2aW5n
Cj4gcmV2aWV3IGZlZWRiYWNrLiBPbmNlIENocmlzdGlhbidzIGZ3bm9kZSBQQ1Mgd29yayBsYW5k
cyBpbiBuZXQtbmV4dCwKPiBJJ20gaGFwcHkgdG8gcmViYXNlIGFuZCBjb252ZXJ0IHRoZSBSb2Nr
Y2hpcCBnbHVlIGRyaXZlciB0byB0aGUgbmV3Cj4gaW50ZXJmYWNlLgoKVGhlIHNlcmllcyBpbiBS
RkMganVzdCBiZWNhdXNlIGkgcG9zdGVkIHdoaWxlIG5ldC1uZXh0IHdhcyBjbG9zZWQgYnV0IGl0
J3MKbm90IGluIFJGQyBzdGF0ZS4gKHNhc2hpa28gaXMgc3RhcnRpbmcgdG8gaGFsbHVjaW5hdGUg
cHJvYmxlbXMpIEkgcGxhbiB0bwpwb3N0IHYxMCB0b2RheSBidXQgc3RpbGwgbG93IHJldmlldyBh
c2lkZSBmcm9tICIibG92ZWx5IiIgYm90LgoKPiAKPiBPbmUgdGhpbmcgSSdkIHJlYWxseSBsaWtl
IHRvIHNlZTogdGhlIGFiaWxpdHkgdG8gc3BlY2lmeSB0aGUgbG9naWNhbAo+IE1JSSBwb3J0IGlu
c3RhbmNlIHZpYSBzb21ldGhpbmcgbGlrZToKPiAKPiAgICAgcGNzLWhhbmRsZSA9IDwmcGNzIE1J
SV9Qb3J0WD47Cj4gCj4gVGhhdCB3b3VsZCBtYWtlIHRoZSBEVCBiaW5kaW5nIG11Y2ggY2xlYW5l
ciBhbmQgbW9yZSBmbGV4aWJsZSBmb3IKPiBtdWx0aS1wb3J0IGNvbmZpZ3VyYXRpb25zLgoKVGhh
dCBpcyBleGFjdGx5IG9uZSBvZiB0aGUgbWFpbiBmZWF0dXJlIG9mIHRoaXMgbmV3IGltcGxlbWVu
dGF0aW9uIGFzIGlzCmFscmVhZHkgdXNlZCBkb3duc3RyZWFtIGJ5IEFpcm9oYSBTb0Mgd2hlcmUg
YSBQQ0llIFBDUyBleHBvc2UgMiBQQ1MgZnJvbSBhCnNpbmdsZSBwcm92aWRlci4gKHRoZSBjb2Rl
IHVzZSB0aGUgc2ltcGxlIGNvbnN1bWVyL3Byb3ZpZGVyIHBhdHRlcm4gYW5kIHRoZQpkcml2ZXIg
aGF2ZSBjb21wbGV0ZSBmcmVlZG9tIG9mIGFwcGx5aW5nIHdoYXRldmVyIGxvZ2ljIGlzIG5lZWRl
ZCB3aGVuCnJldHVybmluZyB0aGUgY29ycmVjdCBjZWxsKQoKSSB0aGluayB0aGUgaWRlYSBvZiBN
YXhpbWUgaXMgdG8gdGVzdCB0aGF0IHNlcmllcyBvbiBtb3N0IFNjZW5hcmlvIGFzCnBvc3NpYmxl
IHRvIHZlcmlmeSBmb3IgZnJhZ2lsaXR5IG9yIHJlZ3Jlc3Npb24gb24gaXQuCgooYnV0IGp1c3Qg
Zm9yIE1heGltZSB0aGUgZmVhdHVyZSBpcyBnZXR0aW5nIGFjdGl2ZWx5IHVzZWQgb24gT3Blbldy
dCBieSAzCmRpZmZlcmVudCBTb0MgYW5kIG5vIGNvbXBsYWluIGZvciBub3cpCgotLSAKCUFuc3Vl
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
