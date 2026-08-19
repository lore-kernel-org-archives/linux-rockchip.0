Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 979A3C5B572
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 08:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7AjFlTwakTuaZuoTd4lnl9E7PqrncxYGmAzvTGZgVQ=; b=IpxqZAZD0zUL+r
	rKmkfhf41920RlAthGthTm+yk+Ds4y1BAuEl+t5xFQRF/uuNyqKMo84zZR+wDthAWcIazKmAMfjwo
	ogEcq03yckbKrCY6mMlI+vXSAUI6sXZP48Bl3NKGqoD5lPsA2PyvBbfUag9DQILqtrzk9hKaMX2ID
	RkNccL6O0Sb5XqZ+ZOXMKWEZp3BFlxJhBXImMhhpJxKgdtetO6uGaYvUqDXjU/IjZlH+TtgKm/6NC
	QOcPV8t9Wvt4KQZkV3kB6obAY0NUJbQom1xEsKmOqJoSVJXnh6HptKAEYDYWiLMS9SHWOW4A9cYRF
	ahMlB6SFJZzLoEAvQ50A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwbG0-00000009H26-3Yy5;
	Wed, 19 Aug 2026 08:02:44 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwbFx-00000009H16-3zC3
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Aug 2026 08:02:43 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-49954b88fffso6996875e9.0
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Aug 2026 01:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787126560; x=1787731360; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=n84akRWrYp771T5DP5M0T4nRXTa96uuJHFpXgEzxzNU=;
        b=gzzHQ8tI/M1lDZ6G6tklSHGb/0jkRVElSpWzxIfVznwUpeT1HfIM7Q8jNKkwrQHN7G
         pJ5tsXDc8/UrqSk5DUs9d+HGRZt1nJepGOXqemMbFCHJMnc+UTbCF1YEzmt83w2DcDbx
         NGJWZVgEoGYrpyVsH2lFTDeIwDwHTQ0WkWA6UMJeoY7IlDz7ON8SrhSmVjg7DeJtR3bm
         9gk9vnn9gsWxYoqMjUH1EPfuaVlCZAOExfj8dYxpkTOz+ICmTCq37xox8ipXR8YlFC/+
         m8NgeZKrfetrXKkFpT46yYlz0P6lKgITdy0Wc/wq1s0XZY0GvJ4foZTDxh8Ri8ALHQdE
         JSJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787126560; x=1787731360;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=n84akRWrYp771T5DP5M0T4nRXTa96uuJHFpXgEzxzNU=;
        b=YK0GP2hYCxaMalckNY12maHTUC7esz5OoAxavVfcN892SAMaATqh4WbraRNfC53bAi
         Y2PcNmwg7TtuoVVLmsixhY8KX33Bifix+ibv0xg6PpClaQ7RJDkrSg95Ih1Gjxyo0BEK
         vNhxvUcoa+p+3JbEZrWwN9ghR8em+dp/2yHKHh3oMG5RJpWaN/M94AogbjZDeLRfOEVq
         3vUZTKuyJTrueHpBwffAKKi6RUPtqN/3ZMpY4WteHjEbfM05YNrLxsD0Mw6RrG0sSp0R
         fi6V6zGKvkzOUkdwPJMveSn1YjyXAEeLczv4vGtYo457eYf2bQO3E5TrxfbzGq2EVDDD
         WEpg==
X-Forwarded-Encrypted: i=1; AHgh+RoneZLu3ZU9U4rSVo1o/bYh8IfAFYCNc6WmztSpE81aaMVXtCqYwoOw5ULSEbk+JF2KIsySt6wS1PN0fDKIhw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyLHnOVIN3ikYO4gLO5w7B2E9p/wdyQqP394lYJGnfhyBR1YF9t
	c4qGtUz1XMdnXjZCNIpZ+9T1Xjx9WoZJXeFX5SqFDa9BWXKHyKgeitiz
X-Gm-Gg: AR+sD11Zp92kS+mYWDLzSs95x6Q13RZvLY16zLFqGSN3TdbfJ2vOriRT//N50zWiXys
	Zt3p6UeI6Gk+VKIfhRGz3D3k+Pk2h7ofpjQgRYy8ICGlD+uyIHVFUYLDrgd/7U/0xkCrhrfCyDr
	WZM2Hyz+mAUT36a94Wo1Zt2GP9O76qQx9P3pSQkWvYz7b0ZYGs83YBCx+5KZKwIkxZoaxo7N3Jc
	krYmvg/Sb4s2olfADBe7vFr2j1aCHcA9DDu6vujXa+lDDeR872NWwWBTzXOE6bIyFm09PpStsFG
	SY0jjBaHzSeacxSlTNH7T3sbduTtOP5dS8aQZi/XqLpkxDJyi9j2yvzDJp0hxQnn71XidZWRSZk
	hFbyLsvwYUjAxXoOg/ZGqF4Dc9s828gxeofWEWP3ZBQgT/G4grxq6WVNfgDY8tbvZyqhVfWKuRk
	D7ys2aQfwo7rpuuuOnwCpLN8UzpFoguhXNVl02W/u+7k6NekEpeNBS4aabwQnWc1WCrDF5bZ07B
	Nva2EhbCjK2kSLUy/2HGl2YeQD40rpQ6U/IzVLqr7OOY24rDU+7Rb1lQwfiXQNSrmLVgOAAMC/M
	RHq6iGlyq1ZZ42KFye1dqtcw2d0jF/FEkzen8Ux9xOM62AArh+Z6h6I9Xus2lQMhOVCNhDliQMG
	Ho/I6vPl7Mz70+ERyOD8Xq8o2db827ACk2MClaygIFImsy1r0Qob72Jbao4nrb8E7o2R/Pw==
X-Received: by 2002:a05:600c:468d:b0:499:4892:d022 with SMTP id 5b1f17b1804b1-499aa17d5a2mr43992645e9.8.1787126559565;
        Wed, 19 Aug 2026 01:02:39 -0700 (PDT)
Received: from localhost (90-182-112-124.rcp.o2.cz. [90.182.112.124])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499a9aa3204sm31743085e9.0.2026.08.19.01.02.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Aug 2026 01:02:39 -0700 (PDT)
Date: Wed, 19 Aug 2026 10:02:34 +0200
From: Joshua Crofts <joshua.crofts1@gmail.com>
To: Vladislav Leonov <vlad@zlab.su>
Cc: andy@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 dlechner@baylibre.com, heiko@sntech.de, jic23@kernel.org, jonas@kwiboo.se,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, nuno.sa@analog.com, robh@kernel.org,
 sjg@chromium.org
Subject: Re: [PATCH] dt-bindings: iio: adc: rockchip-saradc: Fix RV1106
 compatible
Message-ID: <20260819100234.0000355f@gmail.com>
In-Reply-To: <20260819075921.14356-1-vlad@zlab.su>
References: <20260819085255.00001e60@gmail.com>
	<20260819075921.14356-1-vlad@zlab.su>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-w64-mingw32)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_010242_040227_64B1C217 
X-CRM114-Status: UNSURE (   9.90  )
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

On Wed, 19 Aug 2026 10:59:21 +0300
Vladislav Leonov <vlad@zlab.su> wrote:

> Hi Joshua,
> 
> Sorry, I forgot the Suggested-by tag. Should I send a v2, or can the tag be added when applying the patch?
> 
> Regards,
> Vladislav

I think that Jonathan can just add it while applying. No need to
send a v2 unless explicitly asked.

-- 
Kind regards,
Joshua Crofts

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
