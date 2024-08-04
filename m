Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4E22C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Aug 2024 09:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqXM/O6IxBaMgkVCcn7xcgO89uc7JBZarujoIw/cWvk=; b=y/K0ytDnpSYqCf
	bukRGLFzn1Q0nBHyLUy1q88NZ53eusuCv169g8IWKd1TYFell/R4EVej3sNhuVNstR3WJsuzNNFIK
	Db8SoCXKSfTCaxraNaXIdPg9w8DL5IQjWH2gTNURzSMFAvosNdmKJ8bVDAL11wk14BlsvSswCP6IS
	BJ5tP1u3Tg4T5tNrmT3s8KVo/DlycxL/LxVsTJxYQ0V60av3sgNXLAj9uHAoGoRJ4xJn5S7nt65LM
	YPAd/nB0OsjANVZTdsfCM8/k4Zr+mnssSRZea1yd38UHsiBeKUS4+yLM0ARAPbMEfFACetQjQ9rIA
	aN0QPsdPFPB5BwnP3e1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saXKA-0000000CyVo-3vfg;
	Sun, 04 Aug 2024 09:14:46 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saXJe-0000000CyRR-0ihq;
	Sun, 04 Aug 2024 09:14:16 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2eeb1ba0468so141367871fa.0;
        Sun, 04 Aug 2024 02:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722762852; x=1723367652; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q8xhaK+HKr8txiVLN5oIG6mLd/CNIxGQ/Xronjna7FY=;
        b=j+j80PRqzrU0d9OsDnMUIY6q7RgRZIvEvj0bRYN+1SyZTzlydyny6ft6DG/5XhCyqL
         QcLhhOX7kxQGws/rJMMMSWs42N0mhH18lY1G0VYWO+9RNoSKtbMAS7We55khqzDrZeCp
         EiCinXnm2q1i0idezvIejk1MizoD84fGtjrdXYbSvUBu2nNKbkQX3w4o0G8Bs/cx52lq
         mFcicx4pffaYeqJMa7EwIybuovTxqKa8hgD1t1qhlXOFE0L+bnTbA2dB5ofyUIj4Tmvb
         3hXVkKIvAA9tN4MS6KirpVRAcgSJS/TA06sPRxCg7cGecAiQy0rqxYXeLkIes4ea0uyS
         uG7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722762852; x=1723367652;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q8xhaK+HKr8txiVLN5oIG6mLd/CNIxGQ/Xronjna7FY=;
        b=SSMgxArbJY7uEorotQSyaFvEMVgOUtxxgoPEUYfC+GyNKJOiFonII0OBOspOhP+/LX
         EpkYtZiEpJy0oGDbcfO4cLyQ/E2Q0VBnCs7hN3vtN4MqdNqAqYRcVCVdIdM0/izi2cwo
         ln+UpHybOEdd8rjowWPsoAK67Yafly+fN5AbUnivnHn5+Vst3uw9bg0IvUFOhoTyvxRe
         4CANA18I7ZSLnRWJlRUxJ03qwNd6wc0LoxyJqHAcFMXj/jBsZnKM+2WhtLxEh6P7NFcM
         LxDaKtBxv6BjGllmSHx8TSXHdiU7r7q+iLhbD/ojlBuBtYoCFbMt9DLHzSrAqNY/HQXV
         QBpA==
X-Forwarded-Encrypted: i=1; AJvYcCWhZbtl4Ka0nLHucdMce+UADs7Adq8+Oc4Wly3lNh7EBb2/KHJoSNb7CGz9HOXfPTaewC7Cl16NEv8DSS9LUIY17I68QhVNPo2PS+nKGT3r2u6F6Wfx6TX1sfDhhRgBVeqDegLl46CB62Z/ZsT2mOKhnv4mhHi1OeE=
X-Gm-Message-State: AOJu0YxZdSMC3mr3tSDw9GQCX092WIJ9zVPvVeeYPVZSebjxfTlsBgAt
	dL6YcqboB04eM0K3huHgKQALSeHY2HtoFg6RgZszW05RPLlnuQU7
X-Google-Smtp-Source: AGHT+IGyj5V/OyfV2RPE4TLntui3QqyFRdRf2CycS7NXzrsfltpIxE6G4LIrujK/h4qDZiDBxzPkuA==
X-Received: by 2002:a2e:8456:0:b0:2ef:286e:ca68 with SMTP id 38308e7fff4ca-2f15aac2b49mr53430811fa.23.1722762851736;
        Sun, 04 Aug 2024 02:14:11 -0700 (PDT)
Received: from smtpclient.apple (84-10-100-139.static.chello.pl. [84.10.100.139])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f15e1c7581sm6843141fa.68.2024.08.04.02.14.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Aug 2024 02:14:11 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.600.62\))
Subject: Re: [PATCH 0/4] Add initial support for Rockchip RK3528 SoC
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <Zq8eJB7zqOvYQvmw@ziyaolaptop.my.domain>
Date: Sun, 4 Aug 2024 11:13:59 +0200
Cc: Dragan Simic <dsimic@manjaro.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>,
 Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Tim Lunn <tim@feathertop.org>,
 Andy Yan <andyshrk@163.com>,
 Muhammed Efe Cetin <efectn@protonmail.com>,
 Jagan Teki <jagan@edgeble.ai>,
 Ondrej Jirman <megi@xff.cz>,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org
Message-Id: <3EA59A56-C6E5-40B7-A5C4-C280B001E981@gmail.com>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <0c77f99f4af96807a2a8c3028e3c1d4d@manjaro.org>
 <Zq8eJB7zqOvYQvmw@ziyaolaptop.my.domain>
To: Yao Zi <ziyao@disroot.org>
X-Mailer: Apple Mail (2.3774.600.62)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_021414_286749_D871A694 
X-CRM114-Status: GOOD (  24.35  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFlhbyBaaSA8eml5YW9AZGlzcm9vdC5vcmc+
IHcgZG5pdSAwNC4wOC4yMDI0LCBvIGdvZHouIDA4OjIyOgo+IAo+IE9uIFN1biwgQXVnIDA0LCAy
MDI0IGF0IDA3OjQwOjQzQU0gKzAyMDAsIERyYWdhbiBTaW1pYyB3cm90ZToKPj4gSGVsbG8gYWxs
LAo+PiAKPj4gT24gMjAyNC0wOC0wMyAxNDo1NSwgWWFvIFppIHdyb3RlOgo+Pj4gUm9ja2NoaXAg
UkszNTI4IGlzIGEgcXVhZC1jb3JlIEFSTSBDb3J0ZXgtQTUzIFNvQyBkZXNpZ25lZCBmb3IKPj4+
IG11bHRpbWVkaWEgYXBwbGljYXRpb24uIFRoaXMgc2VyaWVzIGFkZCBhIGJhc2ljIGRldmljZSB0
cmVlIHdpdGggQ1BVLAo+Pj4gaW50ZXJydXB0cyBhbmQgVUFSVCBub2RlcyBmb3IgaXQgYW5kIGlz
IGFibGUgdG8gYm9vdCBpbnRvIGEga2VybmVsIHdpdGgKPj4+IG9ubHkgVUFSVCBjb25zb2xlLgo+
Pj4gCj4+PiBIYXMgYmVlbiB0ZXN0ZWQgb24gUmFkeGEgRTIwQyBib2FyZFsxXSB3aXRoIHZlbmRv
ciBVLWJvb3QsIHN1Y2Nlc3NmdWxseQo+Pj4gYm9vdGVkIGludG8gaW5pdHJhbWZzIHdpdGggdGhp
cyBsb2dbMl0uCj4+IAo+PiBJIHdvbmRlciB3aWxsIGF0IGxlYXN0IHRoZSBSSzM1MjggZGF0YXNo
ZWV0IGJlY29tZSBhdmFpbGFibGUgcHVibGljbHk/Cj4gCj4gSSBmb3VuZCBub25lIGZvciBub3cs
IGFuZCBJIGFtIG5vdCBzb21lb25lIGZyb20gUm9ja2NoaXAsIHRodXMgZG9uJ3QKPiBrbm93IHdo
ZXRoZXIgdGhleSBoYXZlIGEgcGxhbiB0byBtYWtlIGl0IHB1YmxpYywgZWl0aGVyLiBCdXQgdGhl
cmUgaGFzCj4gYmVlbiBzb21lIGRldmljZXMgc2hpcHBpbmcgaXQgYWxyZWFkeSBhbmQgZ2V0dGlu
ZyB0aGVtIG1haW5saW5lZCB3aWxsCj4gYmUgYSBuZWF0IHRoaW5nLgo+IAoKTWF5YmUgdGhpcyBo
aWdodCBiZSB1c2VmdWw6IGF0IHNvbWUgcG9pbnQgaW4gdGltZSBJIHN0YXJ0ZWQgdG8gaGFjayB3
aXRoIHJrMzUyOCBzdXBwb3J0IGluIG1haW5saW5lIGtlcm5lbC4KSFcgSeKAmW0gdXNpbmcgaXMg
dm9udGFyIHJrMzUyOCB0dmJveC4KClNvIGZhciAtIG9uIG1haW5saW5lIDYuMTAga2VybmVsIC0g
SSBnb3Qgd29ya2luZzogY2xvY2tzLCBwaW4gY29udHJvbCwgdWFydCwgc2RjYXJkLCBldGgsIHVz
Yi4KCkkgc3RhcnRlZCB0byB3b3JrIG9uIGR3IGhkbWkgYW5kIGdvdCB0byBzdGFnZSB3aXRoIGNv
cnJlY3QgbW9kZSBzZXRzIGJ5IGR3LWhkbWkgYnV0IEkgc3R1Y2sgd2l0aCB2b3AzIHN1cHBvcnQu
CgpHZW5lcmFsbHkgLSBJIHdhcyBiYWNrIHBvcnRpbmcgY29kZSBmcm9tIGJzcCBidXQgcm9ja2No
aXAgYnNwIGlzIHRvbyBkaXZlcmdlbnQgZnJvbSBtYWlubGluZSB0byBteSBiYWNrIHBvcnRpbmcg
c2tpbGxzIDotKAoKSWYgYW55Ym9keSBjYW4gaGVscCB3aXRoIHZvcDMgLSB0aGVuIHdlIGNhbiBo
YXZlIHF1aXRlIGdvb2QgaW5pdGlhbCBzdXBwb3J0IG9mIHJrMzUyOCBpbiBtYWlubGluZSAodGhl
LCBzZGNhcmQsIHVzYiwgZXRoLCBoZG1pKQpncHUsIGhkbWkgYXVkaW8gc2hvdWxkIGJlIHByb2Jh
Ymx5IGVhc3nigKYKCk15IHJrMzUyOCBlbmFibGVtZW50czoKCkJpbmRpbmdzOiBodHRwczovL2dp
dGh1Yi5jb20vd2FycG1lL21pbmlteXRoMi9ibG9iL21hc3Rlci9zY3JpcHQva2VybmVsL2xpbnV4
LTYuMTAvZmlsZXMvMTEwMC1kdC1iaW5kaW5ncy1jbG9jay1hZGQtcmszNTI4LWNsb2NrLWRlZmlu
aXRpb25zLnBhdGNoCgpDbG9ja3M6IGh0dHBzOi8vZ2l0aHViLmNvbS93YXJwbWUvbWluaW15dGgy
L2Jsb2IvbWFzdGVyL3NjcmlwdC9rZXJuZWwvbGludXgtNi4xMC9maWxlcy8xMTAxLWNsay1yb2Nr
Y2hpcC1hZGQtY2xvY2stY29udHJvbGxlci1mb3ItdGhlLVJLMzUyOC5wYXRjaAoKUGluY29udHJv
bDogaHR0cHM6Ly9naXRodWIuY29tL3dhcnBtZS9taW5pbXl0aDIvYmxvYi9tYXN0ZXIvc2NyaXB0
L2tlcm5lbC9saW51eC02LjEwL2ZpbGVzLzExMDItcGluY3RybC1yb2NrY2hpcC1hZGQtcmszNTI4
LXN1cHBvcnQucGF0Y2gKClBvd2VyIGRvbWFpbiBiaW5kaW5nczogaHR0cHM6Ly9naXRodWIuY29t
L3dhcnBtZS9taW5pbXl0aDIvYmxvYi9tYXN0ZXIvc2NyaXB0L2tlcm5lbC9saW51eC02LjEwL2Zp
bGVzLzExMDMtZHQtYmluZGluZ3MtcG93ZXItYWRkLVJLMzUyOC1Tb0NzLWhlYWRlci1mb3ItaWRs
ZS5wYXRjaAoKRXRoZXJuZXQgc3VwcG9ydDogaHR0cHM6Ly9naXRodWIuY29tL3dhcnBtZS9taW5p
bXl0aDIvYmxvYi9tYXN0ZXIvc2NyaXB0L2tlcm5lbC9saW51eC02LjEwL2ZpbGVzLzExMDQtZXRo
ZXJuZXQtc3RtbWFjLWR3bWFjLXJrMzUyOC1hZGQtR01BQy1zdXBwb3J0LnBhdGNoCgpQb3dlciBk
b21haW5zIHN1cHBvcnQ6IGh0dHBzOi8vZ2l0aHViLmNvbS93YXJwbWUvbWluaW15dGgyL2Jsb2Iv
bWFzdGVyL3NjcmlwdC9rZXJuZWwvbGludXgtNi4xMC9maWxlcy8xMTA1LXNvYy1yb2NrY2hpcC1w
b3dlci1kb21haW4tYWRkLXJrMzUyOC1zdXBwb3J0LnBhdGNoCgp1c2I6IGh0dHBzOi8vZ2l0aHVi
LmNvbS93YXJwbWUvbWluaW15dGgyL2Jsb2IvbWFzdGVyL3NjcmlwdC9rZXJuZWwvbGludXgtNi4x
MC9maWxlcy8xMTA2LXBoeS1yb2NrY2hpcC1pbm5vLXVzYjItYWRkLXBoeS1zdXBwb3J0LWZvci1y
azM1MjgucGF0Y2gKClNvQyBwb3dlciBkb21haW5zOiBodHRwczovL2dpdGh1Yi5jb20vd2FycG1l
L21pbmlteXRoMi9ibG9iL21hc3Rlci9zY3JpcHQva2VybmVsL2xpbnV4LTYuMTAvZmlsZXMvMTEw
OC1zb2Mtcm9ja2NoaXAtcG93ZXItZG9tYWluLWFkZC1yazM1Mjgtc3VwcG9ydC5wYXRjaAoKVGhl
cm1hbDogaHR0cHM6Ly9naXRodWIuY29tL3dhcnBtZS9taW5pbXl0aDIvYmxvYi9tYXN0ZXIvc2Ny
aXB0L2tlcm5lbC9saW51eC02LjEwL2ZpbGVzLzExMDgtdGhlcm1hbC1yb2NrY2hpcC1hZGQtc3Vw
cG9ydC1mb3ItcmszNTI4LnBhdGNoCgpOYW5lbmcgcGh5OiBodHRwczovL2dpdGh1Yi5jb20vd2Fy
cG1lL21pbmlteXRoMi9ibG9iL21hc3Rlci9zY3JpcHQva2VybmVsL2xpbnV4LTYuMTAvZmlsZXMv
MTEwOS1waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHktYWRkLXN1cHBvcnQtZm9yLXJrMzUyOC5w
YXRjaAoKZHcgaGRtaTogaHR0cHM6Ly9naXRodWIuY29tL3dhcnBtZS9taW5pbXl0aDIvYmxvYi9t
YXN0ZXIvc2NyaXB0L2tlcm5lbC9saW51eC02LjEwL2ZpbGVzLzExMTAtcGh5LXJvY2tjaGlwLWlu
bm8taGRtaS1hZGQtc3VwcG9ydC1mb3ItcmszNTI4LnBhdGNoCgpJbm5vIGhkbWk6IGh0dHBzOi8v
Z2l0aHViLmNvbS93YXJwbWUvbWluaW15dGgyL2Jsb2IvbWFzdGVyL3NjcmlwdC9rZXJuZWwvbGlu
dXgtNi4xMC9maWxlcy8xMTExLWRybS1yb2NrY2hpcC1kd19oZG1pLWFkZC1zdXBwb3J0LWZvci1y
azM1MjgucGF0Y2ggICAgICAgTnZtZW06IGh0dHBzOi8vZ2l0aHViLmNvbS93YXJwbWUvbWluaW15
dGgyL2Jsb2IvbWFzdGVyL3NjcmlwdC9rZXJuZWwvbGludXgtNi4xMC9maWxlcy8xMTEzLW52bWVt
LXJvY2tjaGlwLW90cC1hZGQtc3VwcG9ydC1mb3ItcmszNTI4LnBhdGNoCgpTb3VuZCBzb2M6IGh0
dHBzOi8vZ2l0aHViLmNvbS93YXJwbWUvbWluaW15dGgyL2Jsb2IvbWFzdGVyL3NjcmlwdC9rZXJu
ZWwvbGludXgtNi4xMC9maWxlcy8xMTE0LXNvdW5kLXNvYy1jb2RlY3MtYWRkLXJrMzUyOC1zdXBw
b3J0LnBhdGNoCgpyazM1MjggZHRzaTogaHR0cHM6Ly9naXRodWIuY29tL3dhcnBtZS9taW5pbXl0
aDIvYmxvYi9tYXN0ZXIvc2NyaXB0L2tlcm5lbC9saW51eC02LjEwL2ZpbGVzLzExNTAtYXJtNjQt
ZHRzaS1yb2NrY2hpcC1hZGQtMzUyOC5kdHNpLnBhdGNoOiAKClZvbnRhciB0dmJveCBkdHM6IGh0
dHBzOi8vZ2l0aHViLmNvbS93YXJwbWUvbWluaW15dGgyL2Jsb2IvbWFzdGVyL3NjcmlwdC9rZXJu
ZWwvbGludXgtNi4xMC9maWxlcy8xMTUxLWFybTY0LWR0cy1yb2NrY2hpcC1hZGQtZHRzLWZvci12
b250YXJfcjMucGF0Y2gKCkl0IG1heSBoYXBwZW4gdGhhdCBhYm92ZSBwYXRjaGVzIHdpbGwgbm90
IGFwcGx5IGNsZWFuIG9uIHZhbmlsbGEgNi4xMCBhcyBJ4oCZbSBwYXRjaGluZyBrZXJuZWwgZm9y
IHM5MDUvczkxMi9zbTEvZzEyL3JwaTMvcnBpNC9ycGk1LzMzMjgvMzM5OS8vMzU2Ni8zNTY4LzM1
ODgvMzUyOCBhbmQgcmszNTI4IHBhdGNoZXMgYXJlIGFmdGVyIGFwcGxpZWQgczkwNS9zOTEyL3Nt
MS9nMTIvcnBpMy9ycGk0L3JwaTUvMzMyOC8zMzk5LzM1NjYvMzU2OC8zNTg4IHBhdGNoZXMuCgpJ
ZiBhbnlib2R5IGlzIGludGVyZXN0ZWQgaW4gYWRkaW5nIHZvcDMgc3VwcG9ydCAtIHBscyBnaXZl
IG1lIHNpZ24gLSB3ZSBjYW4gd29yayB0b2dldGhlcuKApgogCgo+IEp1c3QgRllJLCB0aGUgdmVu
ZG9yIGtlcm5lbCBpcyBhdmFpbGFibGUgaGVyZVsxXSBvbiB0aGUgImRldmVsb3AtNS4xMCIKPiBi
cmFuY2guCj4gCj4gQmVzdCByZWdhcmRzLAo+IFlhbyBaaQo+IAo+IFsxXTogaHR0cHM6Ly9naXRo
dWIuY29tL3JvY2tjaGlwLWxpbnV4L2tlcm5lbAo+IAo+PiAKPj4+IFsxXTogaHR0cHM6Ly9kb2Nz
LnJhZHhhLmNvbS9lbi9lL2UyMGMKPj4+IFsyXTogaHR0cHM6Ly9naXN0LmdpdGh1Yi5jb20veml5
YW8yMzMvYjc0NTIzYTFlM2U4YmYzNjI4NmE1NzJlMDA4Y2EzMTkKPj4+IAo+Pj4gWWFvIFppICg0
KToKPj4+ICBkdC1iaW5kaW5nczogc2VyaWFsOiBzbnBzLWR3LWFwYi11YXJ0OiBEb2N1bWVudCBS
b2NrY2hpcCBSSzM1MjgKPj4+ICBkdC1iaW5kaW5nczogYXJtOiByb2NrY2hpcDogQWRkIFJhZHhh
IEUyMEMgYm9hcmQKPj4+ICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIGJhc2UgRFQgZm9yIHJr
MzUyOCBTb0MKPj4+ICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIFJhZHhhIGUyMGMgYm9hcmQK
Pj4+IAo+Pj4gLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgICAgIHwg
ICA1ICsKPj4+IC4uLi9iaW5kaW5ncy9zZXJpYWwvc25wcy1kdy1hcGItdWFydC55YW1sICAgICB8
ICAgMSArCj4+PiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAg
fCAgIDEgKwo+Pj4gLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUyOC1yYWR4YS1lMjBjLmR0cyAg
IHwgIDIyICsrKwo+Pj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjguZHRzaSAg
ICAgIHwgMTgyICsrKysrKysrKysrKysrKysrKwo+Pj4gNSBmaWxlcyBjaGFuZ2VkLCAyMTEgaW5z
ZXJ0aW9ucygrKQo+Pj4gY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTI4LXJhZHhhLWUyMGMuZHRzCj4+PiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjguZHRzaQo+Pj4gCj4+PiAKPj4+IGJhc2UtY29t
bWl0OiA5NGVkZTJhM2U5MTM1NzY0NzM2MjIxYzA4MGFjN2MwYWQ5OTNkYzJkCj4gCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
