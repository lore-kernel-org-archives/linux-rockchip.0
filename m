Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C96E6C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jul 2022 17:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ddM87gRrARG+rsKb08eA/JZc7XrujyWLtClgmdpyt8=; b=hVW06FTqu2JAfK
	X4q6KtTfENPmXNx2KijHUXkzKoAJQQ9XtCEetVYpBx8M86l8PXF0CmL0OHmXAcTk2KePKPQCFrC/Y
	TqQFBAxWi0D61upqIjNzh0W0lU+SWTHmdtaMK8PHMOpPwyCqkY28WuBm9C8ZZBx96BYCzyVdzR6W7
	0hdsBA5J/DWO7ryI7nIziqv7OCTpBdckdonnLFX2ZjV5tHMmDVGKYYf/iUQ7SYEoIj9b6/D6Pqpk4
	Q3FbPFSRhtlNygSberL7zNhKywe+mAlPvfUpftLh9TBnGgA3Fo3uHWT9XLIYjNxdz0fMx9LL1JiB2
	IG/U2dXOG26ullbxGc5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAaJL-00CdTL-VU; Sun, 10 Jul 2022 17:01:35 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAaJA-00CdP6-Sx; Sun, 10 Jul 2022 17:01:26 +0000
Received: by mail-lf1-x12a.google.com with SMTP id t1so1721079lft.8;
        Sun, 10 Jul 2022 10:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=l5KBCfAYsYBJK00LG729DXfB0UnpaT/zELkVvdQsl2k=;
        b=l4xC2JvKpgguZIekeYks5GBWZNd+nxhscrKPy/iFwlHrX5IHPNR+dg0MkRAGLCLnn4
         J/qjx4gCp+iS+3quLxQDXlEs2QWURLHYdt764zfFSCxgGn5GaK0mTuz1JRGHzGKk/D4D
         2sJtQ8KjuDQ7CmOf5avdSbC4qNCo6olgDxce1o4eg+hvYB+/fa9potF1u4ejsVHdwLCQ
         iEpSvBL9vngc4nvqP6ZFdx5/tk6P8jY2XRGSCsE45SU6hvP2qOjMIH65h9Ym2PzoO28H
         F+3PDTtO1SyY00S2atlgTeBjqk47AEp4IALEacYHMvQkhx9lp7J199Aro/pMfoMFnKxa
         X/Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=l5KBCfAYsYBJK00LG729DXfB0UnpaT/zELkVvdQsl2k=;
        b=5j5MhVoTdc93OS5zwoTkthrxJvMjiUAY1V3mYKEA4Go3XLv5SQMWK9tNRpcXuHhZJN
         e3o8ahRBodF3HrNXWDFDhzsErGog1LcVETC6Zrz0Ouc7ty3bfiR6xrB7TigY9V83sN2V
         i6wxvqq6GSVXi04iJJnaBHmnY2KlVct5dL8TYLrSYMj5vQh46NT0YwIZk5YLTRz0Zxso
         /cfFM2KvIZHUNZckui0Gfk45F553O94sLZgOqa47LG3uZJpQQntsRB3jXQAQW8vVqVpT
         VskWenxoFhVKNWzXGD/cmqNcEQvPzNRviXRUjCDAJtb+jjqDV89LUpWjoQ1mGHYlPhOY
         luNA==
X-Gm-Message-State: AJIora/w0HmKEnIsySs0yRJeiW0SKcCA4BpRZiZEsnPgdAAdtvE8pX3z
	f4EpPs527J0XQeR0EY4QHEu18l8Vys0DkyQc
X-Google-Smtp-Source: AGRyM1uyIS9oK9Fh8cBxLkbNkrlVHcMu5NngnD6Rs6WSVParGKGEiwgMWhY3lvBxlSFpWCJ4WEn3MA==
X-Received: by 2002:a05:6512:505:b0:489:c93d:a95c with SMTP id o5-20020a056512050500b00489c93da95cmr6616045lfb.115.1657472481536;
        Sun, 10 Jul 2022 10:01:21 -0700 (PDT)
Received: from smtpclient.apple (31-178-127-80.dynamic.chello.pl. [31.178.127.80])
        by smtp.gmail.com with ESMTPSA id q12-20020a056512210c00b00489daae997fsm355423lfr.10.2022.07.10.10.01.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Jul 2022 10:01:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <E9DC63DF-46A6-438E-A7F1-5F7A65F56DFC@gmail.com>
Date: Sun, 10 Jul 2022 19:01:17 +0200
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
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
Message-Id: <F2EFA9CE-C8D7-4D7B-9CAB-80EEA9FAF7DB@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <9567EECF-A154-4FE1-A03C-5ED080409030@gmail.com>
 <190C3FD3-0185-4A99-B10E-A5790047D993@gmail.com>
 <CAMdYzYqGGfWDr11iyyfzigxsL7_N2szuag9P6TUZGuzGF4oB+A@mail.gmail.com>
 <AF6176F5-995E-473B-B494-844ECC26BC03@gmail.com>
 <CAMdYzYocZw1SNtgbfqn1VuvKTCiuMNTYRn2MydiGnL-UxtnYuA@mail.gmail.com>
 <0D8B18A1-82FD-4902-A443-AD774DE43DAD@gmail.com>
 <CAMdYzYpdo6Hb30y1oEya5GT1eXHJVTETq--HcmMjF40gvCUZ9A@mail.gmail.com>
 <E9DC63DF-46A6-438E-A7F1-5F7A65F56DFC@gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220710_100124_959468_C86BE9DC 
X-CRM114-Status: GOOD (  10.08  )
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
c3pjenVrQGdtYWlsLmNvbT4gdyBkbml1IDI1LjA2LjIwMjIsIG8gZ29kei4gMTc6MzE6Cj4gCj4g
Cj4gCj4+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBn
bWFpbC5jb20+IHcgZG5pdSAyNS4wNi4yMDIyLCBvIGdvZHouIDE2OjAwOgo+PiAKPj4gCj4+IFRo
ZSBmaXJzdCBpc3N1ZSB5b3UgaGF2ZSBpcyB0aGUgVFYgaXNuJ3QgcmVzcG9uZGluZyB1bnRpbCB0
aGUgYWJzb2x1dGUKPj4gZW5kLgo+IAo+IEkgc3VzcGVjdCB0aGlzIGlzIGJlY2F1c2UgbGFjayBv
biBpZGxlIGdhcHMgYmV0d2VlbiBjZWMgY29tbWFuZHMgc2VudCBmcm9tIGJvYXJkIHRvIHR2Lgo+
IE1heWJlIFRWIHN3LiBjYW4ndCBkZWFsIHdpdGggY29uc2VjdXRpdmUgY29tbWFuZHMgd2l0aG91
dCBhbnkgaWRsZSBiZXR3ZWVuIHRoZW0/IAo+IAo+IEl0IGlzIGludGVyZXN0aW5nIHRoYXQgZGlz
Y29ubmVjdGluZyBUViAtIHNvIENFQyBsaW5lIGlzIGRyaXZlbiBvbmx5IGJ5IGJvYXJkIC0gcm9j
azNhIHN0aWxsIGRvbid0IGhhdmUgYW55IGlkbGUgZ2FwcyB3aGlsZSByb2NrM2IgKGFuZCByYWR4
YSA0LjE5IGJzcCkgaGFzIHRoZW0gKHZlcnkgc2ltaWxhciBiZXR3ZWVuIDUuMThtYWlsaW5lIGFu
ZCA0LjE5IGJzcCkuCj4gCj4gSG93IHRoaXMgaXMgcG9zc2libGUgdGhhdCBjaGFuZ2UgSS9PIGZy
b20gbTAtPm0xIGltcGFjdHMgX3RpbWluZ3NfIG9uIGZyZWUgaGFuZ2luZyBDRUMgbGluZT8gCj4g
Cj4+IFRoaXMgc3RyaWtlcyBtZSBhcyBhIHNpZ25hbCBpbnRlZ3JpdHkgaXNzdWUuIERvIHlvdSBo
YXZlIGFuCj4+IG9zY2lsbG9zY29wZSAobm90IGEgbG9naWMgYW5hbHl6ZXIsIHlvdSBuZWVkIHZv
bHRhZ2VzIGFuZCByYW1wIHRpbWVzKQo+PiB0byBjb21wYXJlIHRoZSB3b3JraW5nIHZzIG5vbi13
b3JraW5nIHNpZ25hbHM/IENoZWNrIGJvdGggc2lkZXMgb2YgdGhlCj4+IGxldmVsIHNoaWZ0ZXIu
Cj4gCj4gSW5kZWVkIC0gaSB3aWxsIHZlcmlmeSB0aGlzIHdpdGggZGlnaXRhbCBvc2NpbGxvc2Nv
cGUuIAoKUGV0ZXIsCgpmeWkKCkkgZ290IG15IG9zY2lsbG9zY29wZSBhbmQgZG8gbWVhc3VyZW1l
bnRzIG9uIGhkbWkgY2FibGUgY2VjIGxpbmUgb246IHdvcmtpbmcgcm9jazNiIGFuZCBub24td29y
a2luZyByb2NrM2EuCnN3IHdhcyBleGFjdGx5IHRoZSBzYW1lIChzYW1lIHNkIGNhcmQ7IG9ubHkg
ZHRiIGNoYW5nZWQpCgpQbHMgc2VlIG1lYXN1cmVtZW50cyBmb3I6CnN0YXJ0IHB1bHNlCiIwIiBw
dWxzZQoiMSIgcHVsc2UKCm5vbi13b3JraW5nIHJvY2szLWE6Cmh0dHA6Ly93YXJwZWQuaW5ldDIu
b3JnL3JvY2szYS1vbmUucG5nCmh0dHA6Ly93YXJwZWQuaW5ldDIub3JnL3JvY2szYS1zdGFydC5w
bmcKaHR0cDovL3dhcnBlZC5pbmV0Mi5vcmcvcm9jazNhLXplcm8ucG5nCgp3b3JraW5nIHJvY2sz
LWIKaHR0cDovL3dhcnBlZC5pbmV0Mi5vcmcvcm9jazNiLW9uZS5wbmcKaHR0cDovL3dhcnBlZC5p
bmV0Mi5vcmcvcm9jazNiLXN0YXJ0LnBuZwpodHRwOi8vd2FycGVkLmluZXQyLm9yZy9yb2NrM2It
emVyby5wbmcKCk5vdyBpJ20gOTklIHN1cmUgaXNzdWUgaXMgbm90IGh3IHJlbGF0ZWQgYnV0IHN3
IChrZXJuZWwpLi4uCgpicgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
