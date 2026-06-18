Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9582CD98E4
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jun 2026 03:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5nZml6db5abCQyEsgqaq8n7ss/YWx4zy1FC/cC5H8k=; b=G1Ejvpj9GshaIp
	zAhqCfyPpnewoudiKJyN/E8ki31WS58izbw4wvRF67AWTzFvJyYENFeR25rms8KqPseuxNOmdXe/0
	Vj/LavAAkWNnC9wF99ytqKaL+08enQZfBUOvSnmlR8FiFg9hu2Df7zLfLrA5OSwKT9yEeJ63tbbnM
	yETPVxoSaFj85HsOae0VImTBk+aInU8HVLf0m/P3KlYU1u0N9f0VW+Jx5g3sRZB0EsYMxQU9kiN4D
	qmIO52tUgJ+Hc7QCw06of6aiB35Jch+Zf5lcljo0cJQMZamhwP7v+PlZkmAfrkFngmbuWS2c4iajX
	c2TXbb0g47kwpcNnZEuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa3FA-00000000Yla-0C74;
	Thu, 18 Jun 2026 03:16:40 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa3F7-00000000Ykv-0hEw
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Jun 2026 03:16:39 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-37cae9b7536so226306a91.3
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Jun 2026 20:16:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781752596; cv=none;
        d=google.com; s=arc-20240605;
        b=FzTU4sA/GKyheiR7LJTCn5r7Kg04U+vW+jKXmPqMvBMF07IRO48jmiVKOm1WRzUkuG
         CDYT/wly3hw0O/rGgfO+WGvnihYW85Vw2ZHRiyJJoPEl0a7F6hZWE3kbat+vw2O9Z3JT
         AnKkOUP/Tr1qtm+A/8w1+Hr2R2yqlhqonauYVrYgcjc4MDsTkPhUg5k0blrGJHAZmBiT
         +jc6Rtx4n+EU2lml2hmpFK5uYZ/wORy+Rr0wrMQOBhaXtebwYMvhcgNjkFfR4toBJx9R
         GwDNe21nQqbfzBjxD0T3aO6tqmhL2FTd59ytP1ii/TGkZhCObThTrkL3I+jZi/sfB97Q
         6ZeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WJeVd6wgp5NlfXuahK3rlSnNBONy3R4PRTFly3AX62g=;
        fh=ts5mJxJkNQ0eBqMElxEFuRrPyIBN4ncIDNaS8D0nqt4=;
        b=i6KjzS/N0IoUJtQkE3jgk8+tMv2Sd/6OQKsXa+4yRWJ9CnnZ660IBzGjzvzTwzP0BO
         UY94K6+dNdfCD74A64lXZ1mdvWRV9G78WNJXNnR+nYJLvz5mPDbVmaIUjLW05hqXJKuP
         CDEwPdnN10Uo+Z+M7z02sUoscGqyjAbHV8cDkFUW3WhJGR8bWjbdpbaP6tGShFS/8Jll
         1+f3JBH3IZFYcA/WTJgauRUM+K5h6GyYqyK1EkkGo65rpzZk2hoJOLuIkbOOKtt2Ig7a
         9ZEe8y8ShVuOvjnxnh5Pl6+NShiF5JaGg1RTbHjyYYrDP4M8lLIyv5eTqYi7gN3SQDXx
         Xj8w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781752596; x=1782357396; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WJeVd6wgp5NlfXuahK3rlSnNBONy3R4PRTFly3AX62g=;
        b=JoNqWAoKxZlOfURDKYuSwgvXjeGcrVWNKOax0U9fBOAFPgjl3Spn3hDeiuIBGlQzgO
         QO8um4ayRD0iBD77MprauAhEyOhRoK6qRu5jpA8hwsmO4xACV/LmMuY2LtyAUYHwmFQU
         mGZYDnVTXNMTZNWhfSBkg24EtfVuBdD09OLze5KWH0yUian1UeIs9JUiNqhh7i4V1X1N
         GI4Xmva4ZpteFvr7jenHMH+FYniwZ3YrYHCoTcoDF+VeJwK8x5neyj4lmQfy/oyCvQ4B
         kXeX1xfcWahoIu0waoZQC+qQmHREUBc3uc6dxG3VZJzx2RXrGxafQwBVPq1ot6RjkcaA
         ZijA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781752596; x=1782357396;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WJeVd6wgp5NlfXuahK3rlSnNBONy3R4PRTFly3AX62g=;
        b=fM3FXaB4JL02hIHekSBYLiJuGaK7I/uaZfIyK22nE7nBFwfVI88yedCo8SSEu2tcUi
         7B5jpaqC5rsDi7u/qHOPVctoaApdG9ZqQv+Ys6r+464BaTRoOAHS2RSQDs3KRrzh6Wr6
         pKVxJMqLcqv2REAOiFSKzWtrVYV0wRnEhCsqDtJvuXay0VjX1rsKvLYEgk5SvKWoOjHy
         ZqxJlR32yhXOvbBQdWI18ld26VXGb5e3Z1UomU9f+eO1ta7m2AO/eqq3NMCRxwMgF/JU
         gnZF1ieQ+8gNSLJIttvf/2FHuJfRnroQj8UNhm78ZxS9EsRBbEONR9LARz1jJmvf2Ycx
         UIWQ==
X-Forwarded-Encrypted: i=1; AFNElJ8EsibPM1H1DUfooW0VvlIDvkCy95EJzfRxSOS5Y09Jpxoi/sNTkVwn1eaHG5nFbUpDDRzn6e2u2z+c9gezsA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxAToszenBq0S3Xr0XMWF7UrKml36iSB2o+Zl7n4T62CKoZ32fP
	zjE//NaMOo5MahjWvOShaWqDp+iIIfDLrmQq1aUC1JigXnSOOeO4Uiw6aM5KDker0e31sE00CCX
	yvcmsYka5owltoyI6URSuppdrAHxzEgo=
X-Gm-Gg: AfdE7cm0dqql+2eVdPWrBj5mMj8Vocxdu3qEIR7MgJ6XXd7yVIBAAuL21KBtJVVLAwV
	AK6JlYIS/jpOs5kYreoLg0t0XItgMqbL0ClMxKS/W/LD/9/M1qPFANDRa0y8B+dexBLl3skvCiB
	04wsJK709JHc3VZX+mCCKoVlO0Rq99VvP04I/3pdxFJ76o69SQaW/BE4ymaDNWofmSBviKnBjkT
	JLlBMpDBvDSzR85GiixmcLp8YNCVFv4Bnfx/5C2o/6yh1Rd24IeyZalYZPX0MgMdLvmbKxAgzgK
	DNak4pJ8IPstXdW1QaqytueiQRk=
X-Received: by 2002:a17:90a:fc4e:b0:36d:b680:3036 with SMTP id
 98e67ed59e1d1-37ce44ea15bmr1577620a91.4.1781752595950; Wed, 17 Jun 2026
 20:16:35 -0700 (PDT)
MIME-Version: 1.0
References: <20260604033554.96996-1-phucduc.bui@gmail.com> <178120760640.484538.12942087225448845771.b4-ty@b4>
 <mPIrpl-QRw6_Q9DZcTQ5xA@collabora.com>
In-Reply-To: <mPIrpl-QRw6_Q9DZcTQ5xA@collabora.com>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Thu, 18 Jun 2026 10:16:24 +0700
X-Gm-Features: AVVi8Cfk3b_69bjEt4plPGyHkaTjXjkUe-hN2B8CF9dwTyCWWDnjf2lpRFKMcdk
Message-ID: <CAABR9nGEHmy4YSqFSyh+gqXVwNgpaGOjqBeUZyHBmMibHwvMxA@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] ASoC: rockchip: Use guard() for spin locks
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-sound@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260617_201637_214034_22541A68 
X-CRM114-Status: GOOD (  22.17  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Nicolas,

Thanks for the feedback.

> FWIW, the SAI patch wasn't sent to the proper maintainer e-mail
> for it which is why I didn't notice this series at all until now,
> and the whole thing is pointless churn that wasn't even tested.
>
> From a cursory glance, whatever LLM was pointed at this and decided
> to make the output my problem also didn't do a good job, the scoped
> indentation of rockchip_sai_runtime_suspend seems pointless because
> it could've been replaced by a pm guard followed by a spinlock guard,
> without an additional level of indentation, and `if (ret == 0) {` is
> not kernel style.
>
> It's not worth the revert but it sucks that I have to now set up a
> new lei search for all the drivers I am supposed to receive mail for
> because vibecoders can't be bothered to run get_maintainers as they
> pad their CV with nonsense like this.
>
> >
> > [1/3] ASoC: rockchip: rockchip_i2s: Use guard() for spin locks
> >       https://git.kernel.org/broonie/sound/c/4bda5af16920
> > [2/3] ASoC: rockchip: i2s-tdm: Use guard() for spin locks
> >       https://git.kernel.org/broonie/sound/c/ec22437fc41a
> > [3/3] ASoC: rockchip: rockchip_sai: Use guard() for spin locks
> >       https://git.kernel.org/broonie/sound/c/f7fe9f707360
> >

Regarding the claim that the Rockchip SAI patch was not sent to the proper
maintainer, I believe there may be a misunderstanding.
Before sending the series, I ran get_maintainer.pl on the patch set and
included all recipients reported by the script, including:

Nicolas Frattaroli <frattaroli.nicolas@gmail.com>

along with the relevant mailing lists.

------------------------------------------
phuc@phuc-desktop:~/work/linux$ ls ../patch/sound/rockchip/clean/
0000-cover-letter.patch
v2-0000-cover-letter.patch
0001-ASoC-rockchip-rockchip_i2s-Use-guard-for-spin-locks.patch
v2-0001-ASoC-rockchip-rockchip_i2s-Use-guard-for-spin-loc.patch
0002-ASoC-rockchip-i2s-tdm-Use-guard-for-spin-locks.patch
v2-0002-ASoC-rockchip-i2s-tdm-Use-guard-for-spin-locks.patch
0003-ASoC-rockchip-rockchip_sai-Use-guard-for-spin-locks.patch
v2-0003-ASoC-rockchip-rockchip_sai-Use-guard-for-spin-loc.patch
phuc@phuc-desktop:~/work/linux$
phuc@phuc-desktop:~/work/linux$
phuc@phuc-desktop:~/work/linux$
phuc@phuc-desktop:~/work/linux$ ./scripts/get_maintainer.pl
../patch/sound/rockchip/clean/000*.patch
./scripts/get_maintainer.pl: file
'../patch/sound/rockchip/clean/0000-cover-letter.patch' doesn't appear
to be a patch.  Add -f to options?
Liam Girdwood <lgirdwood@gmail.com> (maintainer:SOUND - SOC LAYER /
DYNAMIC AUDIO POWER MANAGEM...)
Mark Brown <broonie@kernel.org> (maintainer:SOUND - SOC LAYER /
DYNAMIC AUDIO POWER MANAGEM...)
Jaroslav Kysela <perex@perex.cz> (maintainer:SOUND)
Takashi Iwai <tiwai@suse.com> (maintainer:SOUND)
Heiko Stuebner <heiko@sntech.de> (maintainer:ARM/Rockchip SoC support)
Nicolas Frattaroli <frattaroli.nicolas@gmail.com> (maintainer:ROCKCHIP
I2S TDM DRIVER)
linux-sound@vger.kernel.org (open list:SOUND - SOC LAYER / DYNAMIC
AUDIO POWER MANAGEM...)
linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support)
linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
linux-kernel@vger.kernel.org (open list)
SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEMENT (ASoC) status: Supported
phuc@phuc-desktop:~/work/linux$
phuc@phuc-desktop:~/work/linux$
---------------------------------------------

If there are additional maintainers or mailing lists that should receive these
patches but are not currently reported by get_maintainer.pl, please let me know
so I can include them in future submissions.
I would also appreciate avoiding assumptions that the series was generated
by an LLM. The patches were prepared manually and submitted as part of
my ongoing effort to convert lock/unlock patterns to guard()/scoped_guard()
helpers where appropriate.
The series was build-tested before submission, so I do not believe it
is accurate
to describe it as "wasn't even tested".
Whether a particular conversion is worthwhile is certainly open to
technical discussion,
but I do not think it is reasonable to conclude that a patch was AI-generated
simply based on disagreements about the implementation details.
I understand maintainers have different preferences regarding how aggressively
such conversions should be applied, and I am happy to adjust the approach
based on review feedback.

Best regards,
Phuc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
