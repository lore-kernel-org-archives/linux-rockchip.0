Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D58CC28B2E
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Mar 2025 10:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rn11l2bRt9yszkIWnOp2Pb9EZ9rkFLq3L9hfpI4eDxw=; b=WTA/baWL9ZUKYH
	Zi9SaBGi54DMiJQy9DKfga6nMtzP9fUafoE8del3Q7VvXzDpDs62qhJwbDjvbmiaOCx9ka92E7lc7
	cVhmNMlGnk5R0gESHfti8XpYqCaLlnkdyLhwI16dELBUs5XdWJaUvb8OZ0FkFClRa3kfqc7pKHowY
	sruQ4pgc3kiyWZaK/rLpuWy+uj3XdjrNlRLWQ2wdngV92hzzO69KmKBGRZfxuyqR4dyUVQsMbeeyk
	fI6M9l1PtWmz2fJ0jqpvv2OPr+dRcJungY14M3qB7FoQfYijoBjeo48R2D8dMoruCyj/x+sRkM1QU
	9A3MLmDhV593yR4VkOtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsg4e-0000000AvNP-3eti;
	Thu, 13 Mar 2025 10:46:00 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsg1w-0000000AuiJ-2252;
	Thu, 13 Mar 2025 10:43:13 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5e66407963fso1366175a12.2;
        Thu, 13 Mar 2025 03:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741862588; x=1742467388; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p/wMjl7Q/J6WQRlQUTRmWAqcrf0d7pU34h1ehg31lfI=;
        b=mhjM5PJPhFAgh09Mo+l/jLU1WmCIYu1yea6+LGs69IAZ0uOLczraIbtAp4H2Eqpxpb
         N2zFSOc/Xg/RLtFfSXDJ2GqIBwTvYkqG+pbJwu7tAx1NhAVS0qSJF0hS5tYxbXtm89cW
         dF3qCClhOqaKbAEWd1oYvcnlXE/6iMJtk6YRqqTmDcNX1zaqm9ojIlDzl+LPxb/VPXz+
         Hnmc1p68gctmwJnAgMMMHRVzKq8TusBHiYH82oLQ08Uss2N39gWWnhvQiSP2jtZkXUfH
         Vyb9eZ0EowzfWGufMp3Q89uEw9i+grOCD5IxS31r48anLRkMPmsvaryO2BbJI9ORsbeb
         9n5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741862588; x=1742467388;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p/wMjl7Q/J6WQRlQUTRmWAqcrf0d7pU34h1ehg31lfI=;
        b=ACOKZXgCwLI1mTyzFeBcvFCPWHw/Lit81FugNpFhWA/D6255M7f4qRwDQAccbVftar
         ym7S0TNmWV4dnrZW3iFSG4OQ4FWlHGD6alFAA5en203mgNxAltTqpsWKwnht7l6tzUTE
         4Z9m3P7kuD7XGID01PISo2KXbQXJXagdP15KJYyF/btPkWEgLW4rdeFPdlXaf1ErVCOw
         dqRarn315MS0RkUbm3fGGA8DV6hbwPVshbmH3S8AO4v7N4TMHmXLd3P4o9y6BRQw16DM
         EsccCgRy7U4I3MJjKAbAMtiqbFM5egZAmfnPApi8SSrD36CSdoZI4qgJj32I5X/Hc0+o
         Oyqg==
X-Forwarded-Encrypted: i=1; AJvYcCVfhVE0r8oM0LGJjmtDMkM/Ci0iNsDwbPzlKsKffTgZBDUkxCFzn0obdKZk40ktRukAmp5CTrQsiqPf/5go26U=@lists.infradead.org, AJvYcCX7vuZ79UumCNEncTgQNJ1YpB2T70zgFEk0lvX/wegYcvOIhMGn9vmRVO0Fr4V8028DS7/Fe4Dt4yxkEiNRKBAo@lists.infradead.org
X-Gm-Message-State: AOJu0YzW4DwxhQaPJGJ/XZj2qTgZ8zneRl8ddbewqZggmFHUCTRLrafN
	CCQ3hEYymzilAn9hkWwR6tiWA6bNnCfGPWMkusaIjKDa6s1ALp9c
X-Gm-Gg: ASbGncudJ5J8D0HLHhaB+1gvpkVc3hXx8br9qmaPWJf/DXWyRKeFyABe25VkzryueAZ
	0vePz/nDfvhvtwGbuybXSdMvKe1N5P2geST9h0bqQwtI4qz9DN0wYuZSEV+5HDh9l5vRVemT24e
	070ZgiX37UGoOu1ntfeESAovwfRSmUGgVYZsXaf1nEljzSmAmM6AwSllY3POJQcdL1k3tDrK/v/
	/JGjSEs8QEEHHN/nBjPla/UE3oxWBR9+2iWuEez9jv5Y1smYMJ2unDTYP1L3ZONea/RcNx6k0QL
	QQboy/jHAvMATJTdr0V9bmy+ltaMyMPugpP5O8gmiwh7SoVmu25kBTY1HN63dGLOb8/93ojN0ie
	40kQbnrLGzY/Y+T4bv7aSz616OA==
X-Google-Smtp-Source: AGHT+IHlgJ/0Zq8LGAbC0JM1shbR97v6kXIu61cyy2+LFvXoplbiFx6QsyXJl8Y+G3l47+Ic+J7RIw==
X-Received: by 2002:a05:6402:2347:b0:5e7:c42e:3cc0 with SMTP id 4fb4d7f45d1cf-5e7c42e3d2fmr6212085a12.9.1741862588162;
        Thu, 13 Mar 2025 03:43:08 -0700 (PDT)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e816afdfd0sm598994a12.75.2025.03.13.03.43.05
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Mar 2025 03:43:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH v2 2/7] drm/bridge: synopsys: Add DW DPTX Controller
 support library
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
X-Priority: 3
In-Reply-To: <381bbdeb.342.1958ce2b7f8.Coremail.andyshrk@163.com>
Date: Thu, 13 Mar 2025 11:42:54 +0100
Cc: heiko@sntech.de,
 neil.armstrong@linaro.org,
 sebastian.reichel@collabora.com,
 lumag@kernel.org,
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
Message-Id: <FE66F347-431A-45E1-8764-06767B7FC74E@gmail.com>
References: <20250312104214.525242-1-andyshrk@163.com>
 <20250312104214.525242-3-andyshrk@163.com>
 <61E9B36C-8568-4C0E-A9A7-07FF612912AA@gmail.com>
 <381bbdeb.342.1958ce2b7f8.Coremail.andyshrk@163.com>
To: Andy Yan <andyshrk@163.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_034312_513446_35061BD9 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29t
PiB3IGRuaXUgMTMgbWFyIDIwMjUsIG8gZ29kei4gMDE6MjM6Cj4gCj4gCj4gSGkgUGlvdHIsCj4g
5ZyoIDIwMjUtMDMtMTIgMjI6MjM6MTXvvIwiUGlvdHIgT25pc3pjenVrIiA8cGlvdHIub25pc3pj
enVrQGdtYWlsLmNvbT4g5YaZ6YGT77yaCj4gCj4gVGhpcyBzZXJpZXMgc3RpbGwgIGJhc2VkIG9u
IExpbnV4IDYuMTQgcmM0Lgo+IAo+IERpZCB5b3UgYXBwbHkgdGhlIHRocmVlIGRlcGVuZGVuY3kg
cGF0Y2ggbWVudGlvbmVkIGluIG15IGNvdmVyIGxldHRlcj8KClRoeCEKSSBub3RpY2VkIGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjUwMzAyMTE1MjU3LjE4ODc3NC0x
LWFuZHlzaHJrQDE2My5jb20vIHdhcyBtaXNzaW5nClNvcnJ5IGZvciBmYWxzZSBhbGFybS4KTm93
IHYyIHdvcmtzIG9rIGZvciBtZSBvbiByb2NrNWEgYW5kIHJvY2s1aXR4CiAKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
