Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29D83C54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 13:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WwVUO+geqjEGcjttN25aVeqacixclEOYqYNnqVfWfWw=; b=EO9YFJ8PjWQ93q
	YxqmqJ5Waul/S8hs/wITGJ1keLyHSTbIFKaixbsAFl9zcLUTJ0I9pwe+eXS2WeSos8k2AyLk78tC0
	kjtfdThwgZSOTRcKQzEyNFiDnWd1QfFIN/RD9cUhxLZQxy4Dgtc7e+HL5QHfWM2Qk9pwhO2rUJclQ
	zWXWDdtrgKSAe4ocKBqSbezyNHxL/eSuVWzUwTpIbEzgBnFDUMkSDiZa9pgGzgRaeafB7yndNpFUd
	loklm/OH223UWpQ9nZNKLHrz8yaMg/MBShaDkUXkQddjgOgGpUt7GsDF9LKvC/tq+BMnpAwWuOBO3
	3pj4O0CdyexSr+TQKPig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFF9G-007A1n-Kp; Tue, 10 Jan 2023 13:58:42 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFF99-0079zW-8p
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 13:58:36 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id v19so5957112ybv.1
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 05:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oFZwRY6uBLBZuERv09QJDFRGTgg+VDphnUtXg9PxNVs=;
        b=dl1jEucuqI5UQ9nBOsumkthDB4PfRmN3wVSlcmlvbjubyaXxhwoQ7Exr6BgRMLd3Yo
         P0sufSV6uSsrNZD49qZPiPEnlGyGxMNqEZrgNsnyKlOYRdG6DdsMn7Lfg0JybwCZj0vi
         MyIqe543F2JLZt0XdMGGP4/ox3OeZqQUmQTVSMB5Q778gXqGTJAWY2SVpZ5lMspwnfNz
         vigfWaQcd9yxjRSF2feHGUfQZPA1naqqYrUl/uzEAwoCcxqiFFEVAWeleDuNEoqxwWre
         3s07ItqpkVuBScfPpaZpgKfi7qbEYt17ypOVoxxHKyqZKRFHbhSlqyktHV/Yh3L+1siH
         E4/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oFZwRY6uBLBZuERv09QJDFRGTgg+VDphnUtXg9PxNVs=;
        b=jF51ZlmNx1e2ROd2x3h/P+OH0I2dQ0wtAOP3HUrfnBpB9dGR6GQKTFOnz4S7jvtbxQ
         xFG04X3nO44F44V7BjFrxOupFONWw/ptBzmbmQ3ikk8T64nuz9YceknX80Qbzq9bIAS1
         wkQ9qXCeMydMw3jE/reXuYY5xX+EEu8rFYYhSOKbCYrYiEYX5cviZ5dcShEiq8WyBYCQ
         KLRYHVB2ZPcVp0FWEtbar4ZOmZL3YQKXBIy57YBn08nLlaSFc6CTssx3JmU52U9Z8kj9
         pqk9Z2kDWtub89d6tJTSHavcpzzr38Ek9hhJfgi0Vx80EpIPsUhiaSRVmZ2xv0hFSWv/
         nFvg==
X-Gm-Message-State: AFqh2kr7VQtJrD98l8kzzYopshG9NdyoDFqJaawAgYhO5xsyFJD3xIIg
	ClSFrP7kF9TL1xpzvP/U4HtlF0Hv8WxKHE//0xFmFw==
X-Google-Smtp-Source: AMrXdXtOECa1Nex6QNZ4s6NPdbEMGaCsgxgZn2oFye7UY6Yw2EAr94MI/GfGgzcchhu1QTDe4tNi6+wPyE/Ue6w6WxI=
X-Received: by 2002:a25:606:0:b0:709:9335:236e with SMTP id
 6-20020a250606000000b007099335236emr6135998ybg.288.1673359112123; Tue, 10 Jan
 2023 05:58:32 -0800 (PST)
MIME-Version: 1.0
References: <20230109155801.51642-1-sebastian.reichel@collabora.com> <20230109155801.51642-5-sebastian.reichel@collabora.com>
In-Reply-To: <20230109155801.51642-5-sebastian.reichel@collabora.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Tue, 10 Jan 2023 19:28:21 +0530
Message-ID: <CA+VMnFy3CbspUFwGv9VGuDPE3ffNJFj1fwH-1qkhMX0rWgYbwg@mail.gmail.com>
Subject: Re: [PATCHv8 4/7] dt-bindings: arm: rockchip: add initial rk3588 boards
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier <maz@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Christopher Obbard <chris.obbard@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_055835_330489_8DE55C4A 
X-CRM114-Status: UNSURE (   6.79  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 9 Jan 2023 at 21:28, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Add DT binding documentation for the Rockchip RK3588 EVB1,
> Radxa Rock 5 Model A and B.
>
> Co-Developed-by: Christopher Obbard <chris.obbard@collabora.com>
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

Reviewed-by: Jagan Teki <jagan@edgeble.ai>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
