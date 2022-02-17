Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CE05C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 12:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNcAMwjCGb7WKZyyqPTnBG4qTHjhwdyECN9d9xIl6h8=; b=0ffxc0wEljMVw6
	Vk5IrIxx8J0/i9sbZ+/KKilLb9d8t9s4r8uer6dC6g0dwaeKTF6yqmpqYQ1UKdOp9Pd01nkXwMPL4
	zuipPQfF3BRXHBOZ9KBmuOE6xtIcahX8J1dXAC8pCbB955fkTG/gzr7Y0LIxJvyEej0zwK6ZoLlxM
	ujjBgRUDYzsWK6jZys+XNcEGbaQq4SQ0NEHD/JrpJn/Yi7srTlwCRW4yV36relJ7bzLwzvm0yPxxi
	8jpg3NwZrJmXH3JPQnRh+niUeadWHv7JpLnDpV29fxeBV2JLMUELUmkx2/7TSjKe7Fe3/r1/oiZLp
	yFOJyoXHK6iRVkPyoffQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKg0C-00ASmw-GK; Thu, 17 Feb 2022 12:35:16 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKg09-00ASmJ-Gr; Thu, 17 Feb 2022 12:35:14 +0000
Received: by mail-lj1-x22b.google.com with SMTP id bx31so8147298ljb.0;
 Thu, 17 Feb 2022 04:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=LWPD6Kgwc6gsaIwc/83kQA+CXXR+sZVYQ6mwJ+IXwU4=;
 b=hd6kCYaXxC+91SAwo9IDDgatkFAZJcDBJFFXqg+VxWpV/IpAs4DSzvsdPSJudNZm6G
 GCW0j+A5cZETBTsCPyWqRFV4dCYIoCZ0IBH0hgP+QalawR+1ORj2oPqNgxNJ/LyP0qaW
 PKLzU6hDgHozsS8MeuRGEZxYtvgsPf5nzkaebL0uFopcGy09/BKniZ3/2EQVmVl5IHyZ
 srDjK9bC2zmLLcRTq2K2uniI6JDKyv8D+PKh+mRFkSzE0qu3b9fFDmsbgH/JMm/Cufmg
 5pco7mnzpvz1+u8LFIO2h9EWncAeizuwiDPLdpQ0PMmdAKFb1g3dAhYjfG1zvU0ZinWo
 1KFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=LWPD6Kgwc6gsaIwc/83kQA+CXXR+sZVYQ6mwJ+IXwU4=;
 b=suEFZOWAfQRfemL8EJhrFeMJ7qmQgL1r0Q+14I5RIeSxHIqsSEjkt+pURUxesM11tt
 lrthmDbA8R4Ikx8D4ofOie5tddqmDU4NEbn4nK0tf75njQGRjo8RApsXevApqbl+vSy1
 0d+9klOvvr4Lu2ENjA9UA/lzGO+W507SqCQrGbqhRUiSyPIaEnaykac9p7YVAJAYyoSd
 r+pyHIGLzIjkTuFeDB0FefG5dnXpZb+3o3iRK2IskPDVxChZA9PS8tUzQjnqUpszdjfD
 DmUKIqQ5w1mcVoHG+VonARz1RIw4JFfo3XguZrm2gKQIS0T6e7Vf7ZR9F22qZx0MVxIi
 0sZw==
X-Gm-Message-State: AOAM533coaQ5xbM3pR0GT9r+G8CALH14Wlwl5pgLmZ0fbQuyL9V+Sf9Q
 QOlp7bSg/dW8ExDg8a0/H5vz47MGYF0=
X-Google-Smtp-Source: ABdhPJyq4nnzOUVkvajYV7SPQuFphHf3LTtq76L3OCutr4uEkPgLgZrENhhQGtwqPU3Rgy4RmWFTEQ==
X-Received: by 2002:a2e:9b98:0:b0:244:c875:ba70 with SMTP id
 z24-20020a2e9b98000000b00244c875ba70mr2144114lji.284.1645101311775; 
 Thu, 17 Feb 2022 04:35:11 -0800 (PST)
Received: from [192.168.2.145] (109-252-138-165.dynamic.spd-mgts.ru.
 [109.252.138.165])
 by smtp.googlemail.com with ESMTPSA id bt2sm3332145lfb.93.2022.02.17.04.35.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Feb 2022 04:35:10 -0800 (PST)
Message-ID: <cd66c9da-15c2-54e1-8016-8d951926eaa2@gmail.com>
Date: Thu, 17 Feb 2022 15:35:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 09/23] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-10-s.hauer@pengutronix.de>
From: Dmitry Osipenko <digetx@gmail.com>
In-Reply-To: <20220217082954.2967889-10-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_043513_586671_CBDD9280 
X-CRM114-Status: UNSURE (   8.40  )
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

MTcuMDIuMjAyMiAxMToyOSwgU2FzY2hhIEhhdWVyINC/0LjRiNC10YI6Cj4gVGhlIHJrMzU2OCBI
RE1JIGhhcyBhbiBhZGRpdGlvbmFsIGNsb2NrIHRoYXQgbmVlZHMgdG8gYmUgZW5hYmxlZCBmb3Ig
dGhlCj4gSERNSSBjb250cm9sbGVyIHRvIHdvcmsuIFRoZSBwdXJwb3NlIG9mIHRoYXQgY2xvY2sg
aXMgbm90IGNsZWFyLiBJdCBpcwo+IG5hbWVkICJoY2xrIiBpbiB0aGUgZG93bnN0cmVhbSBkcml2
ZXIsIHNvIHVzZSB0aGUgc2FtZSBuYW1lLgoKSGF2ZSB5b3UgY2hlY2tlZCB0aGF0IERTSSB3b3Jr
cyB3aXRob3V0IHRoZSBlbmFibGVkIGhjbGs/IEknZCBleHBlY3QgdGhlCndob2xlIFZPUCB0byBi
ZSBjbG9jay1nYXRlZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
