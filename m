Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D149C282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 14:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=op+YgUKPZ9YEyrITALWQ+FpcXelD6E8kMC+aqwEoIOU=; b=cPUnz6WFm76T/l
	07KKwBcWV3dsUI6xIb1gpaEHsiA/kMdReUXjyK2F5uAORgnHhyHfG/WJCYkqD4aEqiEKp2gJ2P8bo
	qs90xFpG4Fc5T2vVdErc1JD6oE3E9hNz48UFB/T7wwxIKcdxkF7i9HWrIBHsRTl0zb+Ea2bUFhT8u
	w0sWaq3sC7df11cS7ZvByX/r0BXlWX4ZsMtydT9u+2uyTTc9kmci+anjmR5pbuBtu0nHV5o5xdVef
	nxkO2tMF/tExM3EcUCn/h14caW7B9E+l3Dr6cPenSCbwDPlmUGeNMqb4gdKvNww7pD4n7kN0qSXA5
	p4omxz3ZMo0NHTAw9MTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBtq-0000000B9Zv-1kIp;
	Thu, 06 Mar 2025 14:08:34 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqBtn-0000000B9ZU-2rx4;
	Thu, 06 Mar 2025 14:08:33 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5e57c81d5d0so839488a12.2;
        Thu, 06 Mar 2025 06:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741270110; x=1741874910; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kWV8ljageqb0izUaC+/nzAbBvrv81I+4eNjdwXRR/Fs=;
        b=FKzXl6ImPAK42sC4/r/SbrkaIkgX+QCY/eUxKAT7n+mPiEEWucFBbt9ID4aDHPekho
         UYZgXkuunboZpUtlDygraK4WpqNw/Kwt0UV4+AhVShcH9j4iXSA7+VxvV22aFdAxnn2K
         CKkzPdAKscEAJrjGlrw6e53asWlE3ojz9gGrrWCrU0+r1WvSI9/bQ9llC8rBl1r9as6o
         6YSHuRvLI8f4/ob8q+2e+QIQpbaL51V15TgkL8n9eGNTyOfM7wTGz0HUwIZDpN/kOhoQ
         MYYFwGVcd73SzOj1Zgcp8KBHqjU63294a1/WUovl9/U52aefxr5x70hUxvA2Zneq2nHB
         m7Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741270110; x=1741874910;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kWV8ljageqb0izUaC+/nzAbBvrv81I+4eNjdwXRR/Fs=;
        b=YbJLyN3U2zywwsv/1GTmBQpthafPOO6MrZK+DUfAjzX2RY/HxPQsWhs4tE/QXPGZCg
         T4evuYbL7W0t5EwGTvo3n2XUDNqSRsk0cwIE6IQi/gwwu9+RU/4WwUqkPAm15umgmN5E
         uhqA5IfhLDzfuSkZgjOhymWM5Af7FtatNsvMHzxfbUiXk2BofcMgJtz1o/D3+C/26NdY
         VW9sDNuzQiBIVIC4+1GLS/abE0a5IEzC6oRIJy7G9Zk+BcVC30IfZPWW3l46/rbsk9+R
         TNi24lTbyNTbaHItbqVY0ekeu31BxnDCHH3GhYBYkkGgFtkuuUGNzyfr3oEB93vRnHaI
         cOLw==
X-Forwarded-Encrypted: i=1; AJvYcCU8sLlt4aGQjBVdIGs9BNHkFlLy/ixZH4r8LWA9OhyvAEbMa15GwbY1ewJ0IHeTQ9rjBzaeylpOTE87CISvs8I=@lists.infradead.org, AJvYcCWASSjc/4YBUf6ZJSoJoBgBOjCh4LQRwAZ4DrLC3g2m+Bc/OvcvajqofXRNpgSa3uLrat7dh+38LrBiTewqiNnt@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8kB/l6wZJezpSDMOTmECObd0Tta6ADPBV7Rq9VRhjQpABwc5w
	E7BdepuWgAkax+ElOnLPUMBGq2OXFzxWM5iHb48o95hCsE2uJ/1R
X-Gm-Gg: ASbGnctWiGbWBDEJ1zUNuu7yhQNU+xiwoeEgWcOg9nK+TUMlUJun2CKl9SJZGdAZ0Sf
	1IyMrf10cEat+3oaHz3sifbyD/jUUJih3RUfnnvJG8p7cKaEUp6fYWii6w8y/3VdgKEUoF3ynfw
	gfOktOAL0fmM32NBIQ+SfzY4PZg7kf9fyTW2SQxH7YFUNidpHfYFbCbXmuBt0EzL13hGzfMXc6P
	uQ4Jk3fCv/KmSE4gSz4hD1irafnqKFXjlUYGiv/g5OHhwsldwIn+L8fyjasMV/1LHuqC33q6xPS
	ZBYR/E4H27XaeoScifN9eVDwTI8s//YpAs2aWziHK1e5Q2JSzo/j+GaPkf2e/GgxPu4ma7vtKwJ
	DiaXeykzqMDYVjRpOe2hdECKvdQ==
X-Google-Smtp-Source: AGHT+IEjOK8tItru0CnDJMfpuW+YocWEOgCRwuy6WiSEato+NxCIl7mKq10KFt+G6Q2r3z6rTWjduA==
X-Received: by 2002:a05:6402:2186:b0:5e5:be7f:a1f6 with SMTP id 4fb4d7f45d1cf-5e5be7fa870mr8495205a12.1.1741270109496;
        Thu, 06 Mar 2025 06:08:29 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5c7475e9dsm989794a12.30.2025.03.06.06.08.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Mar 2025 06:08:28 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH 0/6] Add support for RK3588 DisplayPort Controller
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
X-Priority: 3
In-Reply-To: <46c0d239.a4f5.1956b619b97.Coremail.andyshrk@163.com>
Date: Thu, 6 Mar 2025 15:08:14 +0100
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
Message-Id: <252BB2E2-4BC5-4402-953D-F7B30EA5DE14@gmail.com>
References: <25401bfa.291d.19564244e54.Coremail.andyshrk@163.com>
 <75189787-28E1-4FC2-8E10-4960B3877A6F@gmail.com>
 <28b0d3fc.bb3.19568f6b5f8.Coremail.andyshrk@163.com>
 <44213B17-FE14-4FB8-8319-1E31BBF6EAA0@gmail.com>
 <74c154b6.8c50.1956aa8c8d2.Coremail.andyshrk@163.com>
 <1573D5D6-AFED-4D92-8112-B0C6BB52D5FF@gmail.com>
 <46c0d239.a4f5.1956b619b97.Coremail.andyshrk@163.com>
To: Andy Yan <andyshrk@163.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_060831_722891_1B208243 
X-CRM114-Status: UNSURE (   7.07  )
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
PiB3IGRuaXUgNiBtYXIgMjAyNSwgbyBnb2R6LiAxMzoxNToKPiAKPiBIaSBQaW90ciwKPiAKPiAK
PiAKPiBUaGVuIHdoZW4geW91IERQIGNhYmxlIHBsdWdpbiwgeW91IGNhbiBydW4gY29tbWFuZCBh
cyBiZWxsb3cgdG8gc2VlIGlmIHRoZSBkcml2ZXIgZGV0ZWN0cyB0aGUgSFBEOgo+IAo+ICMgY2F0
IC9zeXMvY2xhc3MvZHJtL2NhcmQwLURQLTEvc3RhdHVzIAo+IGNvbm5lY3RlZAo+ICMgCj4gCgoK
QW5keSwKVGh4IQoKV2l0aCBhYm92ZSBjaGFuZ2VzIGnigJltIGdldHRpbmcg4oCeY29ubmVjdGVk
4oCdLgpBbHNvIGl0IGxvb2tzIGNydGMgZ2V0cyByZWFzb25hYmxlIG1vZGU6IGh0dHBzOi8vZ2lz
dC5naXRodWIuY29tL3dhcnBtZS9kNjIyMGUzY2M1MDIwODZhNGM5NWYwNWJkOWY5Y2YwYwoKU3Rp
bGwgYmxhY2sgc2NyZWVuIGhvd2V2ZXIuLi4gIApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
