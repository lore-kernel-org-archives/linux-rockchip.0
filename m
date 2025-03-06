Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DFF5C282EC
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 12:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGeZf4Zrr1G2vVo3tYeDLS2ZqNmHQGzsdwaJKdydRNs=; b=NxfLZ4ohWAqbXa
	Hcrvy+Ps5hnBedOpsdCIdJY0LS6uKq3UGc1pcQhCfuGIrADKazEkVZPyp/o1ZnGJzSIsw8VeIEozC
	BvnZrRE6wj3AHBkjMikIcmyV42Deo/SdbBKfrMdFp1rdfKfxzM22HFdocR47E8YOjSry4d4hf7CCz
	DtuATyek6HGohaHG7NpquxlrhUj2ShAgF4WS781iBdgYuemLiG3S1hspcl4ySzfGG+emohoocXLkV
	uEA6Kl4cbRa2CtWqPpx+XjAFN3fz7QxTJ3h4ODrJ8HLUtyGPzPB/zTKgjSc1E8Jo65WZ3QFwSb6zh
	bkT+0rlHNkqC06+dbE+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqAHv-0000000AuhH-43zi;
	Thu, 06 Mar 2025 12:25:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq9hf-0000000Apvr-3CxO;
	Thu, 06 Mar 2025 11:47:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=To:References:Message-Id:
	Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:
	Content-Type:Sender:Reply-To:Content-ID:Content-Description;
	bh=FeRfzX4J4SSpOIDf0qW1PY6Ceutjf1oaVySsSvMl5vc=; b=lgeEcpXjBZKuU5BBNCWQvBwC2v
	hkAsB35hmlC7mJqFAimgNOXrUUaPrRzDMokx4NqIKcReWHffw720WnDIWxt0RPVrbh1bz/HEYVfJu
	zDMOG9XeRR0RETlspWAQfRt1VUrDUIi54q/sd3FwgNLF4ggO80i7j9aKoosIgOoBMw12T0ShcDiQx
	/9ApeQ9Bl+wLWOwWVn6tlA0LuK3zCzYNSxiK/Oj3J2VDicNNfRShFFK04D5CpjMX0NSGiMLl9pXlN
	PU1Pty78CuO01ecNY0YzJyz+yn/sPfmlmormtk1Nf+vRmF/JgT18tknfq/rEhJQZUAoDVlcEnnKrh
	vKoRKbnA==;
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq9hc-000000013QY-239G;
	Thu, 06 Mar 2025 11:47:50 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5e5cd420781so754611a12.2;
        Thu, 06 Mar 2025 03:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741261666; x=1741866466; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FeRfzX4J4SSpOIDf0qW1PY6Ceutjf1oaVySsSvMl5vc=;
        b=GAUBGp+s4vp+GUbE56CFUcNcYLWfYcOwpDobCoEpgRrzRxNYlROs+jyBQxIsvTZFKU
         cEvND3c2JnE0yudcjOaXsRH/5KFHQLgmPywKFn1KRdK8Dq6HgQgj467KoUxlUXeVKE8O
         dskcBzdNvEuLKsrNfnnS90SpzwOE8g4tmk8vIODofwSYs68DfbFwg1moGTWDcmmx6nuJ
         jyag39czewROLEtnJPmkRzWUieZOE9vzH/094/2n6ge/gRW+jKS9QyTJd4tOd2EoAZ6a
         oSvY6vsch09oqTA82uPhBM5Nlay2wvhLOMPb4doAQSdpPwM1yyaanANwXuxCN2X8lj96
         a6IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741261666; x=1741866466;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FeRfzX4J4SSpOIDf0qW1PY6Ceutjf1oaVySsSvMl5vc=;
        b=K7R+l2RBfYY403gMzleDjb76lkK90p7sIR1TKuHRC9KqNWeJnR3fo348UEpsfV7yKE
         833BQsxZfjLdUa7f8dSH3DgsVL+4QNZX58vIj71ok3RCOVMlAbh6YYvoP+evKVIHL3Is
         hifzTle+a4EsFDTljiTEudQcUVVa6NzL43tA5D25AerP6nWCnlYotyOGngub69FhKtXt
         iznO1z4UmJxFk48mj98qVYRywWUCoyKqxw1pJVA01+z9OnywoA9pYH1MqSToy6BJMZ5z
         9UUoNDLtkAFz30gD1GaoJ/ylCf90nuao9+tRGC6j/Bzpx+T+ACSMPLoTKjm3gMyTeNRm
         TgrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWi5BIlOqcu9WwBaSDI9xBdMmTUqW1pwB3RqSfdBiniF957p+bdwnC3S9krCqLv67gVwu9YpnXMlmdO9D9zobo=@lists.infradead.org, AJvYcCXyiQxkONXwwxj/WyWdPSCrL24OXs8o2QbFXyX+oDZkYH+QHf5TPcnMnJ7HaHW4wTSM0OkjmOs97VTkpK130Es/@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9CdYFk3/T2IC7dT47qzvrUlE+EEW3Qy39RTZv1gCpNpqirQ+c
	ayMw76+3dXx9V+AYrGxRb4vtyarxaBqdJgThlDZ+GM8s8sqR8r/p
X-Gm-Gg: ASbGncstyB6iT9QrYzIfEWiQ1zKTkuYqqdvpyWM33C38mWqOyU66iFtCW8/h9fkPxli
	ixd5vfHnTCL+b1d7Wx7mePHNbp6m8vpDnDuMqdbv8RL6simLg2AH07Nxa16GJQpDD1XN4KjqUG5
	8tn/i3Z8+JFeJIdlaGoT+Rvf3P4MHuH4bT+UIKJLuLsMe40wEzApimFrFlcuSDGTYca4N3k+y9k
	kXrAIGqifUc3XNvLfub8jfck62Dq87oTRlLi5FL3W8cKUnY5hFV6sWDEV67O1tDfU5yhWnYrMOr
	6uL5UlEHdjrnBY+yh5brf81DXsOFQ3tRBqsaOMoeausG8qpLwhXr+YXcMtbYfchcDzVfsCkVYqh
	teDc9Ke5yIdAlzMWwFa5kRjpg8g==
X-Google-Smtp-Source: AGHT+IGmWH/iGLqzVwuFP7RJWXn1M1/VMzVhYdWXO/tkwNgc0iTeL4UpWXsQLzyXQnZ0n4LlZ1JcXg==
X-Received: by 2002:a17:906:730d:b0:ac2:63b:6a45 with SMTP id a640c23a62f3a-ac20db4ccd0mr725046966b.30.1741261665523;
        Thu, 06 Mar 2025 03:47:45 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac23973a8d0sm82006266b.87.2025.03.06.03.47.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Mar 2025 03:47:45 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH 0/6] Add support for RK3588 DisplayPort Controller
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
X-Priority: 3
In-Reply-To: <74c154b6.8c50.1956aa8c8d2.Coremail.andyshrk@163.com>
Date: Thu, 6 Mar 2025 12:47:31 +0100
Cc: heiko@sntech.de,
 neil.armstrong@linaro.org,
 sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org,
 hjc@rock-chips.com,
 mripard@kernel.org,
 linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 yubing.zhang@rock-chips.com,
 dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>,
 krzk+dt@kernel.org,
 robh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Message-Id: <1573D5D6-AFED-4D92-8112-B0C6BB52D5FF@gmail.com>
References: <25401bfa.291d.19564244e54.Coremail.andyshrk@163.com>
 <75189787-28E1-4FC2-8E10-4960B3877A6F@gmail.com>
 <28b0d3fc.bb3.19568f6b5f8.Coremail.andyshrk@163.com>
 <44213B17-FE14-4FB8-8319-1E31BBF6EAA0@gmail.com>
 <74c154b6.8c50.1956aa8c8d2.Coremail.andyshrk@163.com>
To: Andy Yan <andyshrk@163.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_114748_579846_02E58818 
X-CRM114-Status: GOOD (  12.20  )
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

Cj4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogQW5keSBZYW4gPGFuZHlzaHJrQDE2My5jb20+
IHcgZG5pdSA2IG1hciAyMDI1LCBvIGdvZHouIDA5OjUzOgo+IAo+IAo+IEhpLAo+IAo+IOWcqCAy
MDI1LTAzLTA2IDE2OjQyOjAw77yMIlBpb3RyIE9uaXN6Y3p1ayIgPHBpb3RyLm9uaXN6Y3p1a0Bn
bWFpbC5jb20+IOWGmemBk++8mgo+PiAKPj4gCj4+PiBXaWFkb21vxZvEhyBuYXBpc2FuYSBwcnpl
eiBBbmR5IFlhbiA8YW5keXNocmtAMTYzLmNvbT4gdyBkbml1IDYgbWFyIDIwMjUsIG8gZ29kei4g
MDE6NTk6Cj4+PiAKPj4+IAo+Pj4gCj4+PiAKPj4+IEJvdGggb2YgdGhlIHR3byBjb25maWcgb3B0
aW9ucyBzaG91bGQgYmUgZW5hYmxlZC4KPj4+IGFuZHlAUHJvNDgwOn4vV29ya1NwYWNlL2xpbnV4
LW5leHQkIHJnIERXX0RQIC5jb25maWcKPj4+IDQwNDQ6Q09ORklHX1JPQ0tDSElQX0RXX0RQPXkK
Pj4gCj4+IGhlcmUgaeKAmW0gYSBiaXQgbG9zdOKApi4KPj4gZ3JlcGluZyBvbiBmdWxsIGtlcm5l
bCBzb3VyY2VzICh3aXRoIGFwcGxpZWQgaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9q
ZWN0L2xpbnV4LXJvY2tjaGlwL2xpc3QvP3Nlcmllcz05MzY3ODQpIGdpdmVzIG1lIG5vIHNpbmds
ZSBhcHBlYXJhbmNlIG9mIFJPQ0tDSElQX0RXX0RQ4oCmCj4+IERvIGkgbWlzcyBzb21ldGhpbmc/
Cj4gCj4gc2VlIFBBVENIIDMvNjogICAKPiAKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL0tjb25maWcgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZwo+
IGluZGV4IDI2YzQ0MTBiMjQwNy4uYzg2MzhiYWY5NjQxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L0tjb25maWcKPiBAQCAtOCw2ICs4LDcgQEAgY29uZmlnIERSTV9ST0NLQ0hJUAo+IHNlbGVjdCBE
Uk1fUEFORUwKPiBzZWxlY3QgVklERU9NT0RFX0hFTFBFUlMKPiBzZWxlY3QgRFJNX0FOQUxPR0lY
X0RQIGlmIFJPQ0tDSElQX0FOQUxPR0lYX0RQCj4gKyBzZWxlY3QgRFJNX0RXX0RQIGlmIFJPQ0tD
SElQX0RXX0RQCj4gc2VsZWN0IERSTV9EV19IRE1JIGlmIFJPQ0tDSElQX0RXX0hETUkKPiBzZWxl
Y3QgRFJNX0RXX0hETUlfUVAgaWYgUk9DS0NISVBfRFdfSERNSV9RUAo+IHNlbGVjdCBEUk1fRFdf
TUlQSV9EU0kgaWYgUk9DS0NISVBfRFdfTUlQSV9EU0kKPiBAQCAtNTgsNiArNTksMTIgQEAgY29u
ZmlnIFJPQ0tDSElQX0NETl9EUAo+ICBSSzMzOTkgYmFzZWQgU29DLCB5b3Ugc2hvdWxkIHNlbGVj
dCB0aGlzCj4gIG9wdGlvbi4KPiAKPiArY29uZmlnIFJPQ0tDSElQX0RXX0RQCj4gKyBib29sICJS
b2NrY2hpcCBzcGVjaWZpYyBleHRlbnNpb25zIGZvciBTeW5vcHN5cyBEVyBEUCIKPiArIGhlbHAK
PiArICBDaG9vc2UgdGhpcyBvcHRpb24gZm9yIFN5bm9wc3lzIERlc2lnbldhcmUgQ29yZXMgRGlz
cGxheVBvcnQKPiArICB0cmFuc21pdCBjb250cm9sbGVyIHN1cHBvcnQgb24gUm9ja2NoaXAgU29D
Lgo+IAo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzA0N0VFQ0ZDLTdF
NTUtNDRFQy04OTZGLTEzRkUwNDMzM0U0REBnbWFpbC5jb20vVC8jbTE3OGEzMjVlYTBlYmM2NDE4
N2FhZTQ3NGQ3N2MzZjdhOWUwYmM5M2QKPj4gCgoKQWggbXkgYmFkIQpPbmUgcGF0Y2ggcGF0Y2gg
d2FzIGNvbW1lbnRlZCAtIHNvIG5vdCBhbGwgZHAgY29kZSB3YXMgYXBwbGllZC4KCk5vdyBpdCBp
cyBtdWNoIGJldHRlcjoKCnJvb3RAbXl0aC1mcm9udGVuZC01NmIwZjAxOGI1ZTA6fiAjIGRtZXNn
IHwgZ3JlcCBkcm0KWyAgICA5Ljc5NTM4MF0gcGFudGhvciBmYjAwMDAwMC5ncHU6IFtkcm1dIGNs
b2NrIHJhdGUgPSAxOTgwMDAwMDAKWyAgICA5Ljc5NjI1N10gcGFudGhvciBmYjAwMDAwMC5ncHU6
IFtkcm1dIG1hbGktZzYxMCBpZCAweGE4NjcgbWFqb3IgMHgwIG1pbm9yIDB4MCBzdGF0dXMgMHg1
ClsgICAgOS43OTYyNjJdIHBhbnRob3IgZmIwMDAwMDAuZ3B1OiBbZHJtXSBGZWF0dXJlczogTDI6
MHg3MTIwMzA2IFRpbGVyOjB4ODA5IE1lbToweDMwMSBNTVU6MHgyODMwIEFTOjB4ZmYKWyAgICA5
Ljc5NjI2NV0gcGFudGhvciBmYjAwMDAwMC5ncHU6IFtkcm1dIHNoYWRlcl9wcmVzZW50PTB4NTAw
MDUgbDJfcHJlc2VudD0weDEgdGlsZXJfcHJlc2VudD0weDEKWyAgICA5Ljg1MTg2OV0gcGFudGhv
ciBmYjAwMDAwMC5ncHU6IFtkcm1dIEZpcm13YXJlIHByb3RlY3RlZCBtb2RlIGVudHJ5IG5vdCBi
ZSBzdXBwb3J0ZWQsIGlnbm9yaW5nClsgICAgOS44NTE5MjFdIHBhbnRob3IgZmIwMDAwMDAuZ3B1
OiBbZHJtXSBGaXJtd2FyZSBnaXQgc2hhOiA4MTRiNDdiNTUxMTU5MDY3YjY3YTM3YzRlOWFkZGE0
NThhZDlkODUyClsgICAgOS44NTIxMjddIHBhbnRob3IgZmIwMDAwMDAuZ3B1OiBbZHJtXSBDU0Yg
RlcgdXNpbmcgaW50ZXJmYWNlIHYxLjEuMCwgRmVhdHVyZXMgMHgwIEluc3RydW1lbnRhdGlvbiBm
ZWF0dXJlcyAweDcxClsgICAgOS44NTI0MzZdIFtkcm1dIEluaXRpYWxpemVkIHBhbnRob3IgMS4z
LjAgZm9yIGZiMDAwMDAwLmdwdSBvbiBtaW5vciAwClsgICAxMC4wMDMxMDhdIHJvY2tjaGlwLWRy
bSBkaXNwbGF5LXN1YnN5c3RlbTogYm91bmQgZmRkOTAwMDAudm9wIChvcHMgdm9wMl9jb21wb25l
bnRfb3BzKQpbICAgMTAuMDA0NzA1XSByb2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0ZW06IGJv
dW5kIGZkZTYwMDAwLmRwIChvcHMgZHdfZHBfcm9ja2NoaXBfY29tcG9uZW50X29wcykKWyAgIDEw
LjAwNjA4NV0gcm9ja2NoaXAtZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBib3VuZCBmZGVhMDAwMC5o
ZG1pIChvcHMgZHdfaGRtaV9xcF9yb2NrY2hpcF9vcHMpClsgICAxMC4wMDY2NzldIFtkcm1dIElu
aXRpYWxpemVkIHJvY2tjaGlwIDEuMC4wIGZvciBkaXNwbGF5LXN1YnN5c3RlbSBvbiBtaW5vciAx
ClsgICAxMC4wMDY3MzddIHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1YnN5c3RlbTogW2RybV0gQ2Fu
bm90IGZpbmQgYW55IGNydGMgb3Igc2l6ZXMKWyAgIDEwLjAwNzY2M10gcm9ja2NoaXAtZHJtIGRp
c3BsYXktc3Vic3lzdGVtOiBbZHJtXSBDYW5ub3QgZmluZCBhbnkgY3J0YyBvciBzaXplcwoKVW5m
b3J0dW5hdGVseSBzdGlsbCBub3RoaW5nIG9uIHNjcmVlbgoKZHJpIHN0YXRlOiBodHRwczovL2dp
c3QuZ2l0aHViLmNvbS93YXJwbWUvNWU5NzFkZmQyZTlmZDUyZmFlNzY2NDE4MzFjZWJlNDYKCmFu
ZCBrZXJuZWwgZG1lc2cgaHR0cHM6Ly90ZXJtYmluLmNvbS9yMG0zCgpp4oCZbSBub3Qgc3VyZSB3
aGF0IGlzIG1pc3NpbmcgKHNvbWUgZHRzIGVuYWJsZW1lbnQgb3LigKYuKQogIAoKCgoKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
