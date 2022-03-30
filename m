Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77132C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 19:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mtGTkMcHDTeSISQIxBDhdnCFon2Gu6NwJmjJJ9TYnBY=; b=LQWCJN+HpW/s3j
	WPr7nCsqRawNaO+kXUh3aGDa5fS29huGQsJz1wqthIfTuu8daAtOmpyOM0LaijkBX5+L1u/D0L9Ck
	lrhv0NDjVqh8tS9tDtJcl8ep9a5RxtyXWi5suS8+u1Es7w6QmpFHZ1SCzZyvLpx+gzTRcsTNmFSKA
	/yy1EJCChSQLtYyzJ3d7VSDi+Sf3R64IfNkrXIHunz+ZiA6juC2ktRD+you3Tvy39NtS3CeE+XXmN
	z7viK1yLwZfcMAzq+Ww0++v/OIwwj+X+kW0Ich84UcAlhhf6ExdKjwFMsKR0GAlsYi146NbSE+fYd
	kAiMn78mUDFajUjU58JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZe6L-00HKht-G8; Wed, 30 Mar 2022 19:35:29 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZe6I-00HKgJ-74; Wed, 30 Mar 2022 19:35:27 +0000
Received: by mail-lf1-x134.google.com with SMTP id bt26so37602732lfb.3;
 Wed, 30 Mar 2022 12:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=+hFS9yiWXU5Tm3A7GxdPXoa2m44Y5zzRQ3RHb2S5heA=;
 b=lbfzE5JFB87L0Z8EWEHyM+kuNGb+OvmW8NCsV3/EVi8u1qjjiLXRq7oqKajqRZ7ZSl
 nnu1RObxvYQbZVLYJ1tkczqhTD+lqdj4SMmgpWHqqBtCO/nATFK3NhicR38BMgFj3Mn4
 lUo+3NeimaiebVbTXd0NzshKT69ZbSPfcF8FvsU/Sm93VXN7iC3h73K5gm/v+ToxP9BX
 8JESl+XrimPd+fNrEK0hGZc2KsJ8SZimPetuLJ1wL3fWb6r8XzK8vBroyS4l4NhP1Vy1
 iT5tA+HSp+fVeOfGm1CkFLuMvILcwaMALnr02RBY1tfitUFDIkrqDmbCGksMcUXMf9am
 L+Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=+hFS9yiWXU5Tm3A7GxdPXoa2m44Y5zzRQ3RHb2S5heA=;
 b=dPGrDayDJ7UYwpirzHFBDp2JpqNbnpXhOJJP5PjJWwhefrCllyNrt6QThotbm8+p8R
 4kwUhNfEZMo0e0fk0KJw1r8dX58osrvc+Tel2SKio2Q/8wrRR+f0napIlmKwJyv8hvZa
 WZNLT97aNjmCUoDLLT2QlXuGSrCB3Ru1tepyqBWh2ih8x6mot63ymbyFay1AWz/UASz+
 PZ+60xu+ltTYgNvLlBHU6X2lnkjJRROiPLaHrxwJytqqWdSTldYh41YtoYrJ1H0hWk/8
 grHoS0BjoFEo0zdsH7X8b5RFBXRzfaFFBx7mS6Si8kG1cTBmt6RnkhLyMbEhCoqIdV8i
 K2PA==
X-Gm-Message-State: AOAM532KhWU+BdhFc4leWo3RCAbauh3rO7Qoxx7sndGi/KAPICMTehQE
 /3r6g7RTXO/97kT7OG0l8BbLWRfuXD8=
X-Google-Smtp-Source: ABdhPJybiNtzm3A19YbhP1IZApDmGW72t2M57isGlDBtcyv1zNdYWTmgJc38kheIaiBAJl3rSRXXIg==
X-Received: by 2002:a05:6512:3e10:b0:44a:4443:76a9 with SMTP id
 i16-20020a0565123e1000b0044a444376a9mr7831211lfv.630.1648668921051; 
 Wed, 30 Mar 2022 12:35:21 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 194-20020a2e05cb000000b00247eb0e1b15sm2502598ljf.97.2022.03.30.12.35.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Mar 2022 12:35:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220330192054.GA4012@pengutronix.de>
Date: Wed, 30 Mar 2022 21:35:17 +0200
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Message-Id: <4B10A821-DB1E-41EA-B5C2-364F2DE53F93@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_123526_298718_D46BC408 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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
dXRyb25peC5kZT4gdyBkbml1IDMwLjAzLjIwMjIsIG8gZ29kei4gMjE6MjA6Cj4gCj4+IFNvIGkg
dHJpZWQgZm9sbG93aW5nIGNvbWJpbmF0aW9ucwo+PiAKPj4gLWJvb3QKPj4gLW1vZGV0ZXN0IC1z
IDY5QDY3OjE5MjB4MTA4MCAtPiBvawo+PiAtbW9kZXRlc3QgLVAgNDNANjc6MTkyMHgxMDgwQE5W
MTIgLT4gZ3JlZW4gc2NyZWVuCj4gCj4gSSBoYXZlIG5vIGlkZWEgd2hhdCBpcyBnb2luZyBvbiBo
ZXJlLiBUaGVyZSBzYW1lIGNvbW1hbmRzIHdvcmsgZm9yIG1lLgo+IFlvdSBjb3VsZCBwcm92aWRl
IG1lIHlvdXIga2VybmVsIGNvbmZpZyBhbmQgdXBzdHJlYW0gY29tbWl0aXNoIHlvdSBhcmUKPiB3
b3JraW5nIG9uLCBtYXliZSB0aGF0IGdldHMgbWUgY2xvc2VyIHRvIHlvdXIgc2V0dXAuCgpTYXNj
aGEKCk1heSB5b3UgdHJ5IHdpdGggbXkga2VybmVsIGNvbmZpZz8KaHR0cHM6Ly9naXRodWIuY29t
L3dhcnBtZS9taW5pbXl0aDIvYmxvYi9tYXN0ZXIvc2NyaXB0L2tlcm5lbC9saW51eC01LjE3L2Zp
bGVzL2xpbnV4LTUuMTctYXJtNjQtYXJtdjguY29uZmlnCgpJZiB0aGlzIGNvbmZpZyB3aWxsIHdv
cmsgZm9yIHlvdSB0aGVuOgoKaSdsbCB0cnkgdG8gYnVpbGQgdmFuaWxsYSA1LjE3ICsgbWluaW1h
bCBwb3NzaWJsZSBzZXQgb2YgcGF0Y2hlcyBhbGxvd2luZyBtZSB0byBnZXQgdmlkZW8gZGVjb2Rl
ciB3b3JraW5nIG9uIHJrMzU2Ni4KVGhpcyBtYXkgaGVscCB1cyB0byBmaW5kIHdoeToKLXlvdSBo
YXZlIGl0IHdvcmtpbmcKLUkgaGF2ZSBpdCBub3Qgd29ya2luZwoKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
