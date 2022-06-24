Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36A74C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 08:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVxmOS/oYvjjVsYZ7++uogodRbKGqz9qQmPT99DIZZ4=; b=kDzWlirElG2c3a
	s8IjT09XAO3KCg7hZH1sbJV76K4yIhJ0nUSksas4lbABwQoKc7u8Me2e8BGvdTbf1qsh/gjCjV9ND
	n3pDLkoje+PPCPN5E41NrCWagNsgdMSuu3XjRB1UHlFzPIS1NPic/DF9rxk++cdGiScdXd9GgSaV0
	CJPsevZs/rp4OatMA8n1aXt77aYXkn4Pz1NpXrkioyyNh/Ep481f+rzPfmd+XYiEfiuNAOPOX3xrh
	aZp/v/kKPFr5Tw1y/WOPzwqxs9msekcAbzc58lLX9TpxX+hUzwwsTIVyNa0E6qyocFnUJei5EYed4
	+ULAY6DCpv4ce4nuKUWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4ehn-001B3d-2m; Fri, 24 Jun 2022 08:30:19 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4eha-001Azb-Oq; Fri, 24 Jun 2022 08:30:08 +0000
Received: by mail-lf1-x12a.google.com with SMTP id f39so3251033lfv.3;
        Fri, 24 Jun 2022 01:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=vhHLGCtSFBmyTfpIq8EGMclBh6vP5ng22bVrKNLVB7U=;
        b=YxzICFaUI5YpE/x/tv9UJzxb8gkbdJ7J4TOXMBqYrDns5wF4Y7Udzf2XXNmTMSUqaK
         dNa9S8hSe5rIDyHc6zGtVR1NwAPvrLiQXsCH7pFV6yWkEF9nfTA/GZUb2XybWzQiMTZo
         h7gNLBJgNFHUM7XjYwT1Ars2SVUZVt0CjFQH0LazrPrUXpw9sI0QExU3BtRXgfHeQ6vY
         qUt9NZs69JQAMPizsExjbQBarCYG3ugwSkQYC15QPcn7slvYp3H7zcR31l78niQ26MPM
         mgdJVdGzg390spTO0HB8/ke+IIf2UJCJGBH3cfUkCbaJSdFzKagmKu03DmVBL3p/9fTy
         8clQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=vhHLGCtSFBmyTfpIq8EGMclBh6vP5ng22bVrKNLVB7U=;
        b=L+w9opboSNJ2ZUQiX1+4lQ0XPOqWaZtUlbaHGi5RYYnIP5WwpIGxD6em9sVmR+Wjhx
         wLGaO16qYy3HW6QA3gg4IZ1OOMkkiAYiy4K5afOWj+dJnU/F/UQ+wQiIMDrek9fq04U2
         wE8BI0UHVf3yWLib8rMNpYjFBPQ+/uxPyIV+9XirDNBs61nD+jNFfU1ZVPGYfnVfxEg3
         0QBhXqbzEY6KUpkIBneAUVJkMfTkddcQpzlMI/4GNxDB1bsW3jzSUjcvhvxOWUID20gA
         3AHrFeI562akTSSjvyI7lU9nhfRd654WcKvFp39kLN2+nS7SNNKtMAyHwAG6bHiriR3W
         z7BA==
X-Gm-Message-State: AJIora/Z1H+owApxMSriaAYw+9v3beNWHlVyx2xH56ykDyZrS/SOMbP3
	XejpSveq1klDjT2pvfVfou4=
X-Google-Smtp-Source: AGRyM1v9WYYuU0mBUEqOos3s+YPYbE9rehK49zADd4tUbZ1ZMFZa88G7vdlJynmS8fl+cY/I2Cqivg==
X-Received: by 2002:ac2:548d:0:b0:47f:b55a:6f60 with SMTP id t13-20020ac2548d000000b0047fb55a6f60mr1598551lfk.627.1656059400359;
        Fri, 24 Jun 2022 01:30:00 -0700 (PDT)
Received: from smtpclient.apple (31-178-127-80.dynamic.chello.pl. [31.178.127.80])
        by smtp.gmail.com with ESMTPSA id d18-20020a056512369200b0047916805548sm256568lfs.242.2022.06.24.01.29.57
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Jun 2022 01:29:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <9567EECF-A154-4FE1-A03C-5ED080409030@gmail.com>
Date: Fri, 24 Jun 2022 10:29:55 +0200
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 kernel test robot <lkp@intel.com>
Message-Id: <190C3FD3-0185-4A99-B10E-A5790047D993@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <9567EECF-A154-4FE1-A03C-5ED080409030@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_013006_863803_1C73F364 
X-CRM114-Status: GOOD (  16.42  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBpb3RyIE9uaXN6Y3p1ayA8cGlvdHIub25p
c3pjenVrQGdtYWlsLmNvbT4gdyBkbml1IDE0LjA1LjIwMjIsIG8gZ29kei4gMTU6NTg6Cj4gCj4g
Cj4gCj4+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBn
bWFpbC5jb20+IHcgZG5pdSAwOS4wNS4yMDIyLCBvIGdvZHouIDE4OjAwOgo+PiAKPj4gSWYgeW91
IHdhbnQgdG8gY29uZmlybSB0aGUgaGFyZHdhcmUgaXMgY29uZmlndXJlZCBjb3JyZWN0bHkgeW91
IGNhbgo+PiByZW1vdmUgdGhlIGNlYyBwaW4gZnJvbSB0aGUgaGRtaSBub2RlIGFuZCBzZXQgdXAg
YSBjZWMtZ3BpbyBub2RlLgo+PiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4x
OC1yYzUvc291cmNlL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9jZWMt
Z3Bpby50eHQKPiAKPiBQZXRlciwgU2FzY2hhCj4gCj4gSSBjb25maWd1cmVkIGNlYy1ncGlvIGFu
ZCBjYW4gY29uZmlybTogd2l0aCBncGlvIGNlYyB3b3JrcyBvbiBteSByb2NrMy1hIGJvYXJkIHYx
LjMxLgo+IAo+IFNvIHN1bW1hcmlzaW5nIG15IHRlc3RzOgo+IAo+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJvY2szLWEgdjEuMSAgIHJvY2szLWEgdjEuMzEgICByb2Nr
My1iCj4gCj4gcmFkeGEgZGViaWFuOiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvayAg
ICAgICAgICAgICBvayAgICAgICAgICAgICAgICBvawo+IAo+IG90aGVyIHBwbCBtYWlubGluZSA1
LjE4OiAgICAgICAgICAgICAgIG9rICAgICAgICAgICAgIG4vdCAgICAgICAgICAgICAgICBuL3QK
PiAKPiBtZSB3aXRoIG1haW5saW5lIDUuMTg6ICAgICAgICAgICAgICAgICBuL3QgICAgICAgICAg
ICBub2sgICAgICAgICAgICAgIG9rCj4gCj4gbWUgd2l0aCBtYWlubGluZSA1LjE4IGdwaW8tY2Vj
OiAgbi90ICAgICAgICAgICAgIG9rICAgICAgICAgICAgICAgIG4vdAo+IAo+IE5vbi13b3JraW5n
IGNvbWJpbmF0aW9uIGlzOiByb2NrMy1hIHYxLjMxIGh3IG9uIG1haW5saW5lIDUuMTguIAo+IEZv
ciBtZSBpdCBsb29rcyBsaWtlIHRoZXJlIGlzIGJ1ZyBpbiBjYXNlIHdoZW4gcmszNTY4IHVzaW5n
IGNlYyBvbiBoZG1pdHhtMV9jZWMgbGluZS4KPiAoVGhlIHNhbWUgYmluYXJpZXMgd29ya2luZyBv
ayBvbiBteSByb2NrMy1iIHdoZXJlIGNlYyBpcyBvbiBoZG1pdHhtMF9jZWMgbGluZS4gSXQgYWxz
byB3b3JrcyBvbiBQZXRlcidzIHJvY2szYSB2MS4xIC0gd2hpY2ggYWxzbyB1c2VzIGhkbWl0eG0w
X2NlYyBsaW5lKS4KPiAKPiBJdCBsb29rcyBsaWtlIHVwcGVyIGNlYyBkcml2ZXIgY2FuIHRhbGsg
dG8gbG93ZXIgZHJpdmVyIChkdy1oZG1pPykgYnV0IG5vdGhpbmcgaXMgcmVjZWl2ZWQgZnJvbSBs
b3dlciBkcml2ZXIsIGFzIG15IGFwcCBzYXlzOgo+IENFQ0FkYXB0ZXI6IENFQyBkZXZpY2UgY2Fu
J3QgcG9sbCBUVjogVFYgZG9lcyBub3QgcmVzcG9uZCB0byBDRUMgcG9sbHMKPiAKPiBidHc6IEkg
dmVyaWZpZWQgd2l0aCBvc2NpbGxvc2NvcGUgY29ubmVjdGVkIHRvIGhkbWl0eG0xX2NlYyBsaW5l
OiBzdGFydGluZyBjZWMtY29tcGxpYW5jZSAtdiAtVCBzaG93cyBleHBlY3RlZCBzZXJpZXMgb2Yg
MFYgcHVsc2VzIG9uIGhkbWl0eG0xX2NlYyBsaW5lLi4uLgo+IAo+IAoKU2FzY2hhLCBQZXRlcgoK
SSByZXR1cm5lZCB0byB0cnlpbmcgdG8gZmluZCB3aHkgaGRtaS1jZWMgaXMgbm90IHdvcmtpbmcg
b24gcm9jazMtYSB2MS4zMSBody4KCkknbSBvbiB2b3AyIHYxMSBvbiA1LjE4IG1haW5saW5lLgog
CkN1cnJlbnQgZmluZGluZ3M6CgooMSkgdGhlIHNhbWUgc3cuIHN0YWNrL2JpbmFyaWVzIHdvcmtz
IG9uIHJvY2stM2IgKHdoZXJlIGNlYyB1c2VzIGhkbWl0eF9tMCBpbnN0ZWFkIG9mIGhkbWl0eF9t
MSBJL08gbGluZSk7CgooMikgZ3Bpby1jZWMgaG93ZXZlciB3b3JrcyBubyBwcm9ibGVtIG9uIHJv
Y2szLWE7CgooMykgbW9uaXRvcmluZyBjZWMgbWVzc2FnZXMgd2l0aCB2NC11dGlscyAnY2VjLWZv
bGxvd2VyIC1zJyBzaG93cyBleGFjdCB0aGUgc2FtZSBldmVudHMgaW4gbm9uLXdvcmtpbmcgcm9j
azMtYSBhbmQgd29ya2luZyByb2NrMy1iCih0ZXN0ZWQgYnkgaXNzdWUgY29uZmlndXJlIGNlYyBi
eSAnY2VjLWN0bCAtZCAvZGV2L2NlYzAgLS1waHlzLWFkZHI9MS4wLjAuMCAtLXBsYXliYWNrJyBj
b21tYW5kKQoKLS0+IGknbSBpbnRlcnByZXRpbmcgdGhpcyBhcyBjb25maXJtYXRpb24gdGhhdCBs
b3cgbGV2ZWwgcGh5IGxheWVyIHJlY2VpdmVzIG9rIGNlYyBkYXRhIGZyb20gY29ubmVjdGVkIGRl
dmljZSBvbiBub24td29ya2luZyByb2NrMy1hOwoKKDQpIGRlYnVnIHN5c2ZzIGZvciBjZWMgc2hv
d3MgImhhcyBDRUMgZm9sbG93ZXIgKGluIHBhc3N0aHJvdWdoIG1vZGUpIiBmb3Igd29ya2luZyBy
b2NrLTNiIGFuZCB0aGVyZSBpcyBOTyAiaGFzIENFQyBmb2xsb3dlciIgZGVidWcgbWVzc2FnZSBp
biBmYWlsaW5nIHJvY2szLWEuCgpGb3IgbWUgSXQgbG9va3MgbGlrZSBsb3ctbGV2ZWwgaGRtaS1j
ZWMgd29ya3Mgb2sgb24gZmFpbGluZyByb2NrMy1hIC0gYnV0IHVwcGVyIGxheWVycyAoaW4gaGRt
aSB2b3AyPykgYXJlIG5vdCByZWdpc3RlcmluZyAob3IgZmFpbGluZyB0byByZWdpc3RlcikgY2Vj
LWZvbGxvd2VyIGZpbGVoYW5kbGUuIFRoaXMgaGFwcGVucyBqdXN0IHdoZW4gaGRtaXR4IEkvTyBp
biBEVCBpcyBjaGFuZ2VkIGZyb20gaGRtaXR4X20wIHRvIGhkbXV0eF9tMS4gQSBiaXQgc3RyYW5n
ZSAtIGJ1dCBhbGwgbXkgdGVzdHMgY29uc2lzdGVudGx5IGNvbmZpcm1pbmcgdGhpcyBvYnNlcnZh
dGlvbi4uLi4KCkknbSB0b28gd2VhayBpbiBrZXJuZWwgY2VjIGludGVybmFscyAtIHNvIG1heWJl
IHlvdSBoYXZlIGFueSBwb2ludGVycyBob3cgdG8gZnVydGhlciBkZWJ1Zy9pbnZlc3RpZ2F0ZSB0
aGlzIGlzc3VlPwoKCgpCVFc6IGknbSBub3QgYWxvbmUgd2l0aCBjZWMgaXNzdWUgb24gcm9jazNh
IHYxLjMxIC0gYWxyZWFkeSAyIG90aGVyIHVzZXJzIGNvbnRhY3RlZCBtZSB3aXRoIHRoZSBzYW1l
IGlzc3VlLi4uCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
