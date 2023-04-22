Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CF11C6FD18
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Apr 2023 13:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/02dZ2tyn/p2cOcjhS3OY1Ir3Z52A8fMD4NI3QDJtFg=; b=3a0R2/rZO93jnt
	Lv8X7ZNXpFdTzKCNGfUbx7b0LXUvBYGBS6pLfnB8vqTbmoUNK6iiJr9wZKVq+V0H1yslw/egCTAQ4
	ngsaMRp8YQKuIMmGtJ5TPRhK9ln4FrfyrEeyXfUYJQ7P9ztrqROWtRQ8LhfmO8VLVD3vrmzH/ue65
	/s15xAijdK4oGa9AU4lyZhuqjGOnsJKAH6O/Ywl0i7KU3AmCk7Au/5dUAtaJ4FqEv6cjN6T0/6L3k
	IXs8wrsyp1WL9onRK2ms2X7/VRCkz6nDx5BZ1PbwPf4FahxtwxQs/bIyaHLOPfn5L9Ki8N5RpVRHj
	xLXNEzTky0jLU7Hp9yVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqD83-00CveC-1E;
	Sat, 22 Apr 2023 13:18:15 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqD7z-00Cvch-1p;
	Sat, 22 Apr 2023 13:18:12 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-246fd87a124so2661346a91.0;
        Sat, 22 Apr 2023 06:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682169489; x=1684761489;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OEXOvcCleTccxzf6SpDlH6g1vCT+ZCWv4RoMtM7GwHo=;
        b=YEdAOKFPI/DMfW6tgG6ED31RwIhSefV0uE/absT0glfU00EftR1To1s1g8aXa73Ma6
         knMnRkv6vf5a2ioHqLaPoPUJPLq5RwLDjmwKRLK73zburvZ9I7wdiTq3PgiP6k7aCDdj
         KPW1VJ+FzQ/eNU7Sd8aPoixP9GyggQcApszQx3LbpLQFWjTjE7/a1vKLS/EmuE9bN9ht
         J+x61VYPt1WtqyZNx3PUOwVcKj0evlH0KUjQa/g89SiCCLJBkSWVXYM80fjp1nbk7acD
         m8IY1w2aWQqQEEnJOlkHONVJiMzmI9dVrTgORisVVkHml6gadqO3Rt93l+d76L2AsS4x
         Ya+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682169489; x=1684761489;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OEXOvcCleTccxzf6SpDlH6g1vCT+ZCWv4RoMtM7GwHo=;
        b=iKM27f1w/R0pNFpGacHo21lB7ko92Sii39bBWy7sq3jFtwD7oVoYgMfXBkjmb9CzhY
         T/X9Oi1d6s3jhjWLHR8pKanQcZjJ7s1F/4YOVeSFMWS1tjIvWh1QJs9B0ba10s58Y+21
         074+13u/YZB86c0MSR3Rgv0lTPa3K1YHk3vxcCnBDCGC0K5v24bADvSAI9THaswccD5y
         P+5dIKE+bk1edSP0gNq4yBjo5+BLwA/5Otl1wNYJkJPWWU+5kDdsUs0LugBeRXlpO40t
         eFZb+Q/9gB55qCs8EOlajkJtLoPGnVTLrNwmDgd9DlGr3uzDylStMQPwckUiSlvetnDS
         8DdA==
X-Gm-Message-State: AAQBX9cv2LrcpttLvJgBrjfB5YVn17QLWn5F+fHJV4m4drw3qr1n2fls
	hI4Da3tmzlQcVRJP0RkKZaEGnK3GA9ogRgt5YO4=
X-Google-Smtp-Source: AKy350bTgDuCya3cK5JM+XV1GjOy7hTTtYrqT8N5d59lxcSv+Z6imF6HRgMbvNpwd/B5B159SQTnMOJ+oW6YPL7+eFs=
X-Received: by 2002:a17:90a:d102:b0:24b:68da:1420 with SMTP id
 l2-20020a17090ad10200b0024b68da1420mr5264972pju.38.1682169489411; Sat, 22 Apr
 2023 06:18:09 -0700 (PDT)
MIME-Version: 1.0
References: <20230419181309.338354-1-cristian.ciocaltea@collabora.com>
In-Reply-To: <20230419181309.338354-1-cristian.ciocaltea@collabora.com>
From: Vincent Legoll <vincent.legoll@gmail.com>
Date: Sat, 22 Apr 2023 13:17:58 +0000
Message-ID: <CAEwRq=o71XMoj6_QU-mKrrrBqz80=C0g4fMwejv7fN-vAop89w@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] Enable rk3588 timer support
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Sugar Zhang <sugar.zhang@rock-chips.com>, 
	Shreeya Patel <shreeya.patel@collabora.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Johan Jonker <jbx6244@gmail.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230422_061811_609943_ED3C32A1 
X-CRM114-Status: GOOD (  10.17  )
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

SGVsbG8sCgpPbiBXZWQsIEFwciAxOSwgMjAyMyBhdCA2OjEz4oCvUE0gQ3Jpc3RpYW4gQ2lvY2Fs
dGVhCjxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gVGhpcyBwYXRj
aHNldCBlbmFibGVzIFJvY2tjaGlwIFJLMzU4OC9SSzM1ODhTIFNvQyB0aW1lciBzdXBwb3J0Lgo+
IFdoaWxlIGhlcmUsIGl0IGFsc28gaGFuZGxlcyBhIG1pbm9yIERUIGJpbmRpbmcgaXNzdWUgcmVs
YXRlZCB0byBSSzMyODguCgpJIHRlc3RlZCB0aGlzIG9uIGEgUXVhcnR6UHJvNjQgZGV2IGJvYXJk
LCBJIGFwcGxpZWQgeW91ciBzZXJpZXMgdG9wIG9mIG15IHRyZWU6CkNvbGxhYm9yYSdzIHJrMzU4
OCArIHNvbWUgRFQgcGF0Y2hlcyB0byBhZGQgc3VwcG9ydCBmb3IgdGhlIHFwNjQgYm9hcmQuCgpI
ZXJlIGlzIHRoZSBvdXRwdXQgZnJvbSB0aGUgY29tbWFuZHMgeW91IHRvbGQgbWUgdG8gdHJ5OgoK
YmFzaC01LjEjIGdyZXAgcmtfdGltZXIgL3N5cy9idXMvY2xvY2tldmVudHMvZGV2aWNlcy8qL2N1
cnJlbnRfZGV2aWNlCi9zeXMvYnVzL2Nsb2NrZXZlbnRzL2RldmljZXMvYnJvYWRjYXN0L2N1cnJl
bnRfZGV2aWNlOnJrX3RpbWVyCgpiYXNoLTUuMSMgZ3JlcCAtQjMgLUExNCAnRGV2aWNlOiBya190
aW1lcicgL3Byb2MvdGltZXJfbGlzdAoKVGljayBEZXZpY2U6IG1vZGU6ICAgICAxCkJyb2FkY2Fz
dCBkZXZpY2UKQ2xvY2sgRXZlbnQgRGV2aWNlOiBya190aW1lcgogbWF4X2RlbHRhX25zOiAgIDE3
ODk1Njk2OTA3MAogbWluX2RlbHRhX25zOiAgIDEwMDAKIG11bHQ6ICAgICAgICAgICA1MTUzOTYw
OAogc2hpZnQ6ICAgICAgICAgIDMxCiBtb2RlOiAgICAgICAgICAgMwogbmV4dF9ldmVudDogICAg
IDE1MDk0NDAwMDAwMCBuc2Vjcwogc2V0X25leHRfZXZlbnQ6IHJrX3RpbWVyX3NldF9uZXh0X2V2
ZW50CiBzaHV0ZG93bjogICAgICAgcmtfdGltZXJfc2h1dGRvd24KIHBlcmlvZGljOiAgICAgICBy
a190aW1lcl9zZXRfcGVyaW9kaWMKIGV2ZW50X2hhbmRsZXI6ICB0aWNrX2hhbmRsZV9vbmVzaG90
X2Jyb2FkY2FzdAoKIHJldHJpZXM6ICAgICAgICAwCgp0aWNrX2Jyb2FkY2FzdF9tYXNrOiBmZgoK
YmFzaC01LjEjIGhlYWQgLTEgL3Byb2MvaW50ZXJydXB0cyA7IGdyZXAgcmtfdGltZXIgL3Byb2Mv
aW50ZXJydXB0czsKc2xlZXAgMTA7IGdyZXAgcmtfdGltZXIgL3Byb2MvaW50ZXJydXB0cwogICAg
ICAgICAgIENQVTAgICAgICAgQ1BVMSAgICAgICBDUFUyICAgICAgIENQVTMgICAgICAgQ1BVNCAg
ICAgICBDUFU1CiAgICAgIENQVTYgICAgICAgQ1BVNwogMjU6ICAgICAgICA3NDIgICAgICAgIDIx
MCAgICAgICAgIDUyICAgICAgICAgNDkgICAgICAgMjE5NyAgICAgICAxNjQwCiAgICAgIDEwODkg
ICAgICAgMjM0MSAgICAgR0lDdjMgMzIxIExldmVsICAgICBya190aW1lcgogMjU6ICAgICAgICA3
NTQgICAgICAgIDIyMiAgICAgICAgIDUyICAgICAgICAgNDkgICAgICAgMjI1MiAgICAgICAxNzI3
CiAgICAgIDExNDYgICAgICAgMjQwNCAgICAgR0lDdjMgMzIxIExldmVsICAgICBya190aW1lcgoK
U28gaXQgbG9va3MgbGlrZSB0aGlzIGlzIHdvcmtpbmcuCgpUaGFua3MgZm9yIHlvdXIgd29yay4K
CllvdSBjYW4gYWRkIG15OgoKVGVzdGVkLWJ5OiBWaW5jZW50IExlZ29sbCA8dmluY2VudC5sZWdv
bGxAZ21haWwuY29tPgoKUmVnYXJkcwoKLS0gClZpbmNlbnQgTGVnb2xsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
