Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5084C79FB7
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 22:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fu3FcirIpmmpVp/ShbVZHSEABqYKAXNCtLfoK/X9Rf0=; b=z1LYlnT/Qegr8Y
	aIQbhjcQmidQ0xHzIpkkee9dOWseUPIUKzilPehw/QYTInd8+jgM0abut4OAURoNdb7JRF/2ybp/5
	Za1w1YE/9a+CJPll8iGCBk1siJ6slxErjN6ikGUhqRxsurhyux51zwSBxZaYkXbjQtlYPUdjSyqrE
	itgN3A0MniwwNctosPer8zhvo9utZYjlIv59TJyb8qPln+4Y2zdFPTsy8Hfxx0IQ8XmsT21Ee4hYN
	CAF4jrIE1t5V1MC/0EgiBcCMNw7cdPdEsFvUuH0FljETc/Lz3StkhYIU1S9h+gtpRX2thELwXBiM7
	SyhcuNLTnTsahZYr+siQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4R7M-0000000D2qS-1EjQ;
	Wed, 09 Sep 2026 22:50:12 +0000
Received: from mail-lf2-x10.google.com ([2a00:1450:4864:36::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4R7J-0000000D2ph-3MK8
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Sep 2026 22:50:11 +0000
Received: by mail-lf2-x10.google.com with SMTP id 2adb3069b0e04-5b5e4f1e419so929172e87.0
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2026 15:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788994207; x=1789599007; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=mohJO1C3Ec3h1EifombDVZn/MyOz6OHkpyWV2XyP7xs=;
        b=SfdPeNil7X4rthjywbdPIybxKSDJi+1ybKQ5R5yJoABszvFkAq3nfLV3tD90dP1sj4
         KmsnOxE9c0t5L099WxXDfpXGq2TFwiH+c76WKgBPKF10Ug+L8C146ZQ148z3SHvYyIaY
         or6IRY7ZshZyE2VZ7tO3+T/Mk4rD0MdgNzkEMvYZWQin4fFmGrZhxslSREV2WIP7/iHG
         uGlqJXcRLuJWKh15YYZQQVC++MtOj/o2GBw+2jl+YSLFzPL7QOMgGwvKvtRxrq0jG65S
         dW8bPhvP6oBYY6PZ42opPQ+1/71Z2y2LWS2rNKqWNZuNGGfdbOV4EbrFFP/g1tZpRKDs
         9ZzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788994207; x=1789599007;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mohJO1C3Ec3h1EifombDVZn/MyOz6OHkpyWV2XyP7xs=;
        b=sm1QLtMB4IIGyyYMaJiWDCS8PfLmRTp3gArFR0hv69WG0da9/8vd88vmPmb+j029MH
         ssnI/bm7xnM2STA3DD1oTymSHjSlJy5gnKsw4zgerLAiFF+m7xHTzWbRd6zlNosyGnNq
         WnZqNK/N+NsThPc54YtzOqMpGCgIKM/2Ev42kMhg23Jn0G8WjoI6niSt/scSWpGcncq6
         aHdVBI9gE9Xfpwev8hIN87L2UuizuHJAUa/Xp7TcixPhe3/OjGuMRxRZMHlgqWvkkQwD
         yyDJ1MJSmMiP3T9j+Bf9fQR3IUO2hdccuEZ5jA4OOy2mzQegNTvDelEFJVzuw2Jb+9bh
         hyjQ==
X-Forwarded-Encrypted: i=1; AKwUvBzKWpje/xy5mlT5JcsrvrWyZSs3IlFIundFy4XY0Mdd4wCz2jPEWbPNcvyMeejzB7B16l4jKEGo8tKj01hnhg==@lists.infradead.org
X-Gm-Message-State: AFuF++nQ84tEYQ+khBUR8b4M1ugzyapiibMsDsApXg/bPKQP69TxWTG6
	iMV0E1d0vTfybILX0ZIptZM7AdU/F+7XRP3lOvoF/RdIMQJvprPKB4ZX
X-Gm-Gg: AYBFou0bdtitLUyREbC2uDJelhxleC2+8a/iL44lCORYo1lLiMfhv7IXMgTVG4PcwBT
	u/LjFzWbGVuUgAJT38pA1zNyJXGbMqYq0kCS+rRH667am9WAK6GObI8WDwz3DTcdFr9corJ02J8
	rzqwOLKnTpVRXEtnMFOsJ5VFVis1VrbnrjmogCWeG5qloYs5Sd4+UlFLROsWIvKSH7OibUOrmke
	ZSSrC/ubQCilNgjj7k5pvq+RsZtMxa2RfnM7qlWci48DzOysx/sHmYKzVtP7+WoMrSyWETleJeh
	u9RC2OXK8I++tNSpCh+3CQCTRB5MCs+3DmnQFFmaCxJ5MGRS/GNvq2IvT6oh9EORhZUZBr7/32b
	U6nSwSrVoyTWLJz0HTI2MqICgKZV0nICQqe/sy3zzRdSk30fedzhi5nDUvv6Av9J64cMKgC8F5F
	VE4GAnPvm5ZaOA3FwHJ8SPhFdnGiD6tCzfbxSGPkjtAZV5RZGLh8Orj6mokK5j91jkdyHayGo5G
	tN/cAAZMzUSTA==
X-Received: by 2002:a05:6512:6183:b0:5aa:62df:cd0f with SMTP id 2adb3069b0e04-5b89a2eb2a1mr255403e87.2.1788994207240;
        Wed, 09 Sep 2026 15:50:07 -0700 (PDT)
Received: from KAS (94-29-32-34.dynamic.spd-mgts.ru. [94.29.32.34])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b74c409155sm3717504e87.73.2026.09.09.15.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 15:50:05 -0700 (PDT)
From: Andrey Korshunov <razor1702@gmail.com>
To: devnull+hystericaldragons.proton.me@kernel.org
Cc: HystericalDragons@proton.me,
	amadeus@jmu.edu.cn,
	jensenhuang@friendlyarm.com,
	diederik@cknow-tech.com,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] arm64: dts: rockchip: Reset the NanoPi Zero2 PHY from the MDIO bus
Date: Thu, 10 Sep 2026 01:50:02 +0300
Message-ID: <20260909225002.976-1-razor1702@gmail.com>
X-Mailer: git-send-email 2.54.0.windows.1
In-Reply-To: <20260909-r28s-upstream-v3-1-ee3e1a34a353@proton.me>
References: <20260909-r28s-upstream-v3-1-ee3e1a34a353@proton.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_155009_866385_68EF8B13 
X-CRM114-Status: GOOD (  14.95  )
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

T24gV2VkIFNlcCA5LCAyMDI2IGF0IDEwOjMzIFBNIENTVCwg5a6J5a65IHZpYSBCNCBSZWxheSB3
cm90ZToKPiBEZXNjcmliZSB0aGUgcmVzZXQgb24gdGhlIE1ESU8gYnVzIGluc3RlYWQuIF9fbWRp
b2J1c19yZWdpc3RlcigpIGFzc2VydHMKPiBhbmQgcmVsZWFzZXMgdGhlIGJ1cyBsZXZlbCByZXNl
dC1ncGlvcyBiZWZvcmUgYW55IGRldmljZSBvbiB0aGUgYnVzIGlzCj4gcmVnaXN0ZXJlZCwgc28g
dGhlIFBIWSByZXNwb25kcyB3aGF0ZXZlciBzdGF0ZSB0aGUgYm9vdGxvYWRlciBsZWZ0IGl0Cj4g
aW4uCgpDb25maXJtZWQuIEFuZCB0aGFua3MgZm9yIGNhdGNoaW5nIHRoZSBkZXByZWNhdGVkIHBy
b3BlcnRpZXMgSSBoYWQKc3VnZ2VzdGVkIC0gSSBoYWQgbm90IHJlYWQgc25wcyxkd21hYy55YW1s
LCBhbmQgZHQtdmFsaWRhdGUgZG9lcyBub3Qgd2FybgpvbiBkZXByZWNhdGVkIG9uZXMsIHNvIG5v
bmUgb2YgdGhlIGNoZWNrcyBJIHJhbiB3b3VsZCBoYXZlIHRvbGQgbWUgZWl0aGVyLgoKSSByYW4g
aXQgYm90aCB3YXlzIG9uIGEgTmFub1BpIFIyOFMgLSBzYW1lIHBpbiwgc2FtZSBSVEw4MjExRiBv
biBtZGlvMSAtCndpdGggdHdvIGltYWdlcyB0aGF0IGRpZmZlciBvbmx5IGluIHRob3NlIG5pbmUg
bGluZXMgb2YgZGV2aWNlIHRyZWUuIEJvdGgKYXJlIDYuMTguNDQgd2l0aCBtYWlubGluZSBVLUJv
b3QgMjAyNi4wNyAoZ2VuZXJpYy1yazM1MjgpLgoKUmVzZXQgaW4gdGhlIFBIWSBub2RlLCB0aGUg
d2F5IG1haW5saW5lIGRlc2NyaWJlcyBpdCB0b2RheToKCiAgWyAgICAwLjIxNzUxNl0gbWRpb19i
dXMgc3RtbWFjLTA6IE1ESU8gZGV2aWNlIGF0IGFkZHJlc3MgMSBpcyBtaXNzaW5nLgogIFsgICAy
NC41NjY0OTZdIHJrX2dtYWMtZHdtYWMgZmZiZTAwMDAuZXRoZXJuZXQgZXRoMDogY2Fubm90IGF0
dGFjaCBQSFkKCmFuZCB0aGUgcG9ydCBzdGF5cyBkb3duLiBSZXNldCBvbiB0aGUgTURJTyBidXMs
IGFzIHRoaXMgcGF0Y2ggZG9lcyBpdDoKCiAgWyAgIDE0LjYwODkzOF0gcmtfZ21hYy1kd21hYyBm
ZmJlMDAwMC5ldGhlcm5ldCBldGgwOiBQSFkgW3N0bW1hYy0wOjAxXSBkcml2ZXIgW1JUTDgyMTFG
IEdpZ2FiaXQgRXRoZXJuZXRdIChpcnE9UE9MTCkKICBbICAgMTcuNzcwMTAzXSBya19nbWFjLWR3
bWFjIGZmYmUwMDAwLmV0aGVybmV0IGV0aDA6IExpbmsgaXMgVXAgLSAxR2Jwcy9GdWxsIC0gZmxv
dyBjb250cm9sIHJ4L3R4CgpTbyBVLUJvb3QgMjAyNi4wNyBkb2VzIGxlYXZlIHRoZSBwaW4gYXNz
ZXJ0ZWQsIHRoZSBzYW1lIGFzIHRoZSAyMDI1LjEwIEkKZmlyc3Qgc2F3IHRoaXMgb24gLSB0aGUg
Y29tbWl0IG1lc3NhZ2UgaG9sZHMgZm9yIHRoZSBjdXJyZW50IHJlbGVhc2UgdG9vLApub3QganVz
dCB0aGUgb25lIEkgaGFwcGVuZWQgdG8gcmVwb3J0IGl0IGZyb20uCgpUaGUgb25lIHRoaW5nIEkg
Y2Fubm90IGNvbmZpcm0gaXMgdGhlIGJvYXJkIGluIHRoZSBzdWJqZWN0OiB0aGlzIGlzIGFuClIy
OFMsIG5vdCBhIFplcm8yLCB3aGljaCBJIGRvIG5vdCBoYXZlLgoKVGVzdGVkLWJ5OiBBbmRyZXkg
S29yc2h1bm92IDxyYXpvcjE3MDJAZ21haWwuY29tPgoKQW5kcmV5CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
