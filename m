Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCAF9C4450A
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LVeuxfHiBvpvuLNy3k+QYYKk6WyS938SnWqfb5L3cI0=; b=S7F/uGxfXnInXJS3/9+9MENsoX
	4IKKW/0wpZNmSH5q9NEdG4b5o6a1F6wMDYUmik70TKIMkEoUOyKJdCKKahP0W8HGvY/M4Irq8pmfz
	B47zs+KOwmubIwkvl9q1HSfyytQTVJiAxfXRzCy6OOfg+HPlXzENsmfl9KBsuZuqg63qbWZOgLXkA
	GO5szx1RAU8wskf/DnkX292Io8ig5JaHmBgWIWp6ofnYRBBbHgZLy9cHoSq7J3TwYfLgmXvTRvEsu
	QuN5cL1I+7hhkT5aF40IHT8xYDD0GQQO7JZvf8qbkQDDp2yUvDOzQ73+oyB1skqmTHyoY2dk9AXxW
	nAXry0nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVg-00000001bRV-0nJL;
	Thu, 09 Jul 2026 08:53:32 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOgXc-0000000DGTy-0RgD
	for linux-rockchip@lists.infradead.org;
	Sun, 17 May 2026 18:48:45 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5a887ebb416so1788325e87.2
        for <linux-rockchip@lists.infradead.org>; Sun, 17 May 2026 11:48:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779043722; cv=none;
        d=google.com; s=arc-20240605;
        b=e6aOwdBjRUhECJBzqa2dh7iq7X8gteowj/TIsOB6iFMeiZsJ8woGBpMtFNxvDhwn/r
         ytZs+2vHEE2N0jDEjsL1yEgQEEJG8mKH1mdvq+VZI/auEG0xNiekVMEtEdnWOUrP0h51
         5ko1Zry/mGMlOJ+RchmdEhumpQ5OTrxXftkM1NurzTaGXcrO27Wu2PLkSFxFPh9sFfEY
         wP2Oxr0xpDt/MhKunR7zC11wwfSIz1QMvZz3hgWj6qoctqCnIQWP3s24ygCejlV8sPE7
         PMxGf00wk0egiz4d6NwKAcPefWiK77UNi6ljPyXcEV+EzqvfDpIfNnwZ984XcdC5VAjk
         ZnnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=t3QLGLhBaygDygKakS8Kb34ZiRXWe1j8uoA8+Q6jqbk=;
        fh=+S59iss1khD7Phgpxaw6TfzdkZnYoHq76HDPsYgQzeQ=;
        b=TUTwIuAaq17krpVet2OXDNEY0KypVf5Mrpn7zb0Qy7VA6zD130FLMJ76vxuaxopwVY
         d+cVkYQkl/rIvhd9nQ2hvO8fYqgU6jSpOrxHdfuFzyGmHeGwPER7fWZilQeyMG3nMCsY
         B/b8AuRFSEIG19jm7tg4ya9TDAcdiDTOd9SU8egKlKRADlaAwAIt/YUVF0E6wTJtD+Ce
         Spp+JyUPvmC1Nc7wjZ9Pw/WjbmGxQ4f6UV9BP5T/mm9Jt6qUjsv7LWfdrlcLtLIVBILE
         cpuE2t7tHRqj+tfhLB9Zn9zGip9tU06qWfJM3W2IK5+3uUPoVJbn6sJ3VGphkjt0YQ7o
         SDqg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779043722; x=1779648522; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t3QLGLhBaygDygKakS8Kb34ZiRXWe1j8uoA8+Q6jqbk=;
        b=r5CcZtu0P+TuWrcZHfOYuOmliDjoFBmkJbqWwVdB7sqpVNde+D45mHSmKng+9u7EY1
         ZqZ71CRGg0gbsI7NKZfK5pfbt6CyASF6qNlpYx39LIA6mra/wFPR0WrnuyJP9TIy+/JB
         RMYI7N35I8f1E9PrloQ3enzE5xG/a1XNCjIOa9V8j1+kxBlQl2rqJnb6Srt6aly7hJFd
         T2+E8x7IOTC2F3f8hr9AFAwkRoy79xso1JHedYH63FhvqUlBcYRjZaWi9c/ifnwb6OnD
         Fs903+6nCY1ov6/dTaGLrYf8+Sr6XlqkwJnsNetubNa0RWR35MdvoGzielIEXzoEdsur
         vJBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779043722; x=1779648522;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t3QLGLhBaygDygKakS8Kb34ZiRXWe1j8uoA8+Q6jqbk=;
        b=Js/sxEsOZUnMlOZDcWCjMolezxLOubl3IykY7LdO1hIndicUwSSIX3q2YPUjROhzZ8
         XcHbu/WzWM8zbapIm846Ypg0gtxVkQP0qLJp3jzaMP7G7m2jKtLJ48EtJWtXwS26eSC3
         5mwZn8Dx3bNc0vhZJWDGddQSA5P0U7ACymW/SQus4Hs4XzBobj+wYuL7JxxMyPMit19u
         Q4taMnmwQmmCKaMXzc8jRE8OyS5yDhqlp9kaMiNZnvnQSDh3/6Duh+ioj6ihqGeJ+0qg
         RDHM7PCQxciZElchaUXZVPynDEoxJrY7HxQNhqp/Yu9B53Vy2RO4O+jroCgvJGPrsVlF
         Utpw==
X-Gm-Message-State: AOJu0Yyp4FQrZoMjfmipQM28YNVWUpZUAlqAjn9N0Qp/UZbsMvpHn071
	gLjt/IIRgoCSURpMzvq9d1+kXNWw42e6rF79s3a6ANjMkQtu880To6ipvpZgLVAoJWSKasNQco9
	ilc+MEP8kytY6DXFJ7k0qhshDXfxbbGllXQ==
X-Gm-Gg: Acq92OEeApRcUetTFtzQ6KLm06nwKkkZf5/bNspu1XbyddT5BT4E9xyU4arwXH/byxI
	tGVi93Fxp4j4o4n/aeyHpunH1z8Bi3ZIVF20h5sDKyEB7u432Z63sTeSsO+3HOsgDKqKXQnMdhQ
	TfYr5LNVDD3XcLDIe0t3r96JF+GeU62NTuZRsa+VIotKFRV6eHdAvLlSKtdJeGf5G25yMaSj0Dp
	yA4zZqCNrQzJyOjolSYLjvIYWVntPs8nNLZ7br0v5JiV8UnyMn31qqotXXtSItaWAJwPrfADJHR
	XmjQH6cxnykY2z98jqn88GN0HSDfppYfgmpXkw==
X-Received: by 2002:a05:6512:10c4:b0:5a8:65ce:e832 with SMTP id
 2adb3069b0e04-5aa0e74caa6mr3728243e87.36.1779043721801; Sun, 17 May 2026
 11:48:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWaEG5tzSm+J4KDdWHadQjn+XhfGVcsEK-cdpm9hkZj00aWw@mail.gmail.com>
In-Reply-To: <CAGUWaEG5tzSm+J4KDdWHadQjn+XhfGVcsEK-cdpm9hkZj00aWw@mail.gmail.com>
From: "Owen O'Hehir" <electronicconsult1@gmail.com>
Date: Sun, 17 May 2026 19:48:30 +0100
X-Gm-Features: AVHnY4IHc5IYmDKCCYu4oXhXSOG2tZo3uqhP3RxZslFbXGgow-DO57h3MG_ECEU
Message-ID: <CAGUWaEGi15x2LFB_airz6gSTpyKYPb_vhBrcb-WvBXNpS2UpGg@mail.gmail.com>
Subject: Fwd: RK3506B: what enables FW_DDR (0xff5f0000) region enforcement
 from the secure monitor?
To: linux-rockchip@lists.infradead.org
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_114844_166859_95C8ADCC 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

Hello all,

I've been working on replacing the closed `rk3506_tee` blob on an
RK3506B (Luckfox Lyra Ultra) with an upstream from-source OP-TEE
build. I've made decent progress but one part that I'm stuck on is DDR
firewall (FW_DDR, base `0xff5f0000`) locking the secure DRAM region
against the non-secure CPU master. So far I can:

- program the region-map + CON + per-master (MST) registers and can
read them back,
- reproduce the exact register/value/ordering sequence that the vendor
secure firmware uses.

I've verified
- With the same idbloader/SPL (mainline-style U-Boot  `arch_cpu_init`,
which only does the MST grants), the vendor TEE enforces but my OP-TEE
does not, NS still reads/writes the region.
- The SGRF slave-security set is identical between the two.

So there appears to be a precondition outside the FW_DDR register
block that is set by the vendor secure firmware's broader init that
makes region checks actually apply to the A7 NS master.

Any pointers to the FW_DDR register summary or how to set this would
be gratefully appreciated!

Regards,

Owen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
