Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F80DC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 13:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZgjdGtg8whCrFtYxgtn8iUSf+Y7bwGUfbdO3uJB1Qc=; b=ds/8UI3Kj+E+St
	WYn/WieNA62w9M4AhL7szyvTjhUxTjekETqC6bE8AEruMpwFIvq53U5RbvPNS5V35X5arE+D7fMsH
	mf077We/kdSikhJVd2y4wKDVGkkxoBgNFkoNZEkt4bOsYzN2XosBnwo6+IlhTZCwzxs/tdhj7BDUO
	f/r8ET1F+AhX94LqeXIB6LQXgUlZBXVBG3b4TiqO8ZDt/p4/4jj4GlFB8ZsI6Wg7yULe3UeNsVnqE
	18BGMSOk+RuvoqkWKH8gJBU5IndXICDDUQc12grjUnXkH5Of384HHjaohzDCNPzIOgTmOyrTXqqDj
	a1s0kmKDDxSBZ5rPcdGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnh98-00AGYP-HQ; Sun, 08 May 2022 13:40:26 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnh8w-00AGVf-Fs; Sun, 08 May 2022 13:40:16 +0000
Received: by mail-lf1-x132.google.com with SMTP id p10so19751987lfa.12;
 Sun, 08 May 2022 06:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=hNugHMH0gYmqiT8RdngvmmaCgPBmeqCOezfX1bTdgH8=;
 b=a1ogE+DV8vt9+H0Mi/fvKmsEtgHDkVWC6eL/ssTxk9jTpRU8qV9U1aspYnGFQdwcgI
 C+xErjn9SZz3POxD7CLBteDeYzigHg34lyctj8PGHI1w+tVJchdJnfMuqCR0fRI8xD0g
 XPjOZ4FoEMFvNYhjoXg2IBC5COwrSs9XJdpWAkhq7lDcf5oQFCvgjkc6Cc2S7sGtu+Y1
 kEywFIW4LF9eQ7UOyHiLaI0HV/ex22GTuipSC+WUFlAYwGPhhWzIyEZc4IEwotgwDZ7c
 NgIONcyoaugrNAaMmvOpeHNPr0sTcZBfZf1X+g8OHjbzv6uky8kuKgpXBdgdLFkfCnht
 yjpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=hNugHMH0gYmqiT8RdngvmmaCgPBmeqCOezfX1bTdgH8=;
 b=fy55BhT5hzqgu4GwN2UVPpvMOyeKojCOnPGQ6wrss/3rkURObdnlaoo87bHq2mCj/x
 15UKI40/NWyLUzTR1wIgo6SKelhVVBR4HBY27SKZeQjAMDXn6/+qY7T5PT3iurUdZ+Bn
 qFGscbWY6W42dr7dqEw6oQPfa1p4cu5bNGhrkqESENZM+YoqxsiDFCxJ+ffO/MwFMcOV
 lP1dUaIMsmrCwY2duTJp4shRjFbuamgg+VHXd6H5ke0YSN3PktwOSwIdoNQ9r25AgF5z
 OeKcHYh5uzUMyAUEC9erwfh1Vhtrmhby7egKl1JiFvJ8cw8HueI2s8OYF6J8JwZsXXLJ
 JXfA==
X-Gm-Message-State: AOAM533krUhKB77i856xA8yb2MUb7b4Hblnxaxj/9nLZ6P2GGrHcuRj5
 CB11Em7JOueKUMFhWbadnvU=
X-Google-Smtp-Source: ABdhPJzCr7fHU4OjHw+Q2jcxaaAzu3hQtbMSZZC/N9bd3qImeaOgf1Hf2ZyLOdRp09ZiftoRQ44XVg==
X-Received: by 2002:ac2:57c7:0:b0:472:208d:926f with SMTP id
 k7-20020ac257c7000000b00472208d926fmr9029878lfo.224.1652017211328; 
 Sun, 08 May 2022 06:40:11 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 a21-20020a2e88d5000000b00250a09889a1sm1035233ljk.16.2022.05.08.06.40.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 08 May 2022 06:40:10 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220422072841.2206452-21-s.hauer@pengutronix.de>
Date: Sun, 8 May 2022 15:40:09 +0200
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, kernel test robot <lkp@intel.com>
Message-Id: <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_064014_584134_F7D65867 
X-CRM114-Status: GOOD (  10.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5n
dXRyb25peC5kZT4gdyBkbml1IDIyLjA0LjIwMjIsIG8gZ29kei4gMDk6Mjg6Cj4gCj4gRnJvbTog
TWljaGFlbCBSaWVzY2ggPG1pY2hhZWwucmllc2NoQHdvbGZ2aXNpb24ubmV0Pgo+IAo+IEVuYWJs
ZSB0aGUgUkszNTZ4IFZpZGVvIE91dHB1dCBQcm9jZXNzb3IgKFZPUCkgMiBvbiB0aGUgUmFkeGEK
PiBST0NLMyBNb2RlbCBBLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgUmllc2NoIDxtaWNo
YWVsLnJpZXNjaEB3b2xmdmlzaW9uLm5ldD4KPiBSZXBvcnRlZC1ieToga2VybmVsIHRlc3Qgcm9i
b3QgPGxrcEBpbnRlbC5jb20+Cj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDIy
MDMxMDIxMDM1Mi40NTExMzYtNC1taWNoYWVsLnJpZXNjaEB3b2xmdmlzaW9uLm5ldAo+IFNpZ25l
ZC1vZmYtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KPiAtLS0KClNh
c2NoYSwgTWljaGFlbCwKCkknbSB1c2luZyB2MTEgc2VyaWVzIG9uIDUuMTgtcmM1IG9uIHJrMzU2
NiB0dmJveCB3aXRoIGdyZWF0IHN1Y2Nlc3MuClJlY2VudGx5IGkgc3RhcnRlZCB0byB3b3JrIG9u
IHJvY2szLWEgKHJrMzU2OCkuCnYxMSBnaXZlcyBtZSB2aWRlbywgYXVkaW8gLSBidXQgY2VjIGlz
IG5vdCB3b3JraW5nIG9uIHJvY2szLWEuCgpJIHdhcyB0b2xkOgoKMzJrIGNsb2NrIG5lZWRlZCBm
b3IgY2VjIGFuZCB0aGlzIGNsb2NrIGlzIGdlbmVyYXRlZCBieSB0aGUgcnRjIHdoaWNoIGlzIGVt
YmVkZGVkIGluIHRoZSByazh4eCByZWd1bGF0b3IuClNvIHlvdSBzaG91bGQgbWFrZSBzdXJlIGl0
IGlzIGVuYWJsZWQgd2hlbiBoZG1pIGlzIHBvd2VyZCBvbiwgZWcgYWRkaW5nIGl0IHRvIHRoZSBS
SzM1NjhfUERfVk8gcG93ZXJkb21haW4gc2hvdWxkIGhlbHAKCkkgd2FzIHRyeWluZyB0byBkbyB0
aGlzIGluIGR0cyBodHRwczovL3Bhc3RlYmluLmNvbS82N3d1OVFySCBidXQgY2VjIGlzIHN0aWxs
IG5vbi1mdW5jdGlvbmFsCgpNYXliZSBZb3UgaGF2ZSBzb21lIGhpbnRzL3BvaW50ZXJzIGhlcmU/
CgpicgoKYnR3OiBteSBkdHMgZ2l2ZXMgbWUgd29ya2luZyB1c2IyIHBvcnQwL3BvcnQxIGFuZCB1
c2IzIHBvcnQwLiBidXQgdXNiMyBwb3J0MSBpcyBub24td29ya2luZwptYXliZSB5b3Uga25vdyB3
aGF0IGlzIG1pc3Npbmc/IAogIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
