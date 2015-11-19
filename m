From: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v3 6/8] usb: dwc2: host: Assume all devices are on one
 single_tt hub
Date: Thu, 19 Nov 2015 13:20:23 -0600
Message-ID: <87twoheqyw.fsf@saruman.tx.rr.com>
References: <1447721484-22548-1-git-send-email-dianders@chromium.org>
 <1447721484-22548-7-git-send-email-dianders@chromium.org>
 <87lh9uf1fw.fsf@saruman.tx.rr.com>
 <CAD=FV=UW-AbY9GnYOS_2V=dZTkL6NiZsO4urpf==qjcRDaEMDA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============3870683234588019891=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=UW-AbY9GnYOS_2V=dZTkL6NiZsO4urpf==qjcRDaEMDA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: "Herrero, Gregory" <gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, Ming Lei <ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "Kaukab,
 Yousaf" <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Dinh Nguyen <dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

--===============3870683234588019891==
Content-Type: multipart/signed; boundary="=-=-="; micalg=pgp-sha1;
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> writes:
>> Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> writes:
>>> Until we have logic to determine which devices share the same TT let's
>>> add logic to assume that all devices on a given dwc2 controller are on
>>> one single_tt hub.  This is better than the previous code that assumed
>>> that all devices were on one multi_tt hub, since single_tt hubs
>>> appear (in my experience) to be much more common and any schedule that
>>> would work on a single_tt hub will also work on a multi_tt hub.  This
>>> will prevent more than 8 total low/full speed devices to be on the bus
>>> at one time, but that's a reasonable restriction until we've made things
>>> smarter.
>>>
>>> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>>> ---
>>> Changes in v3:
>>> - Assuming single_tt is new for v3; not terribly well tested (yet).
>>>
>>> Changes in v2: None
>>>
>>>  drivers/usb/dwc2/core.h      |  1 +
>>>  drivers/usb/dwc2/hcd_queue.c | 40 ++++++++++++++++++++++++++++++++++++=
+++-
>>>  2 files changed, 40 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
>>> index 567ee2c9e69f..09aa2b5ae29e 100644
>>> --- a/drivers/usb/dwc2/core.h
>>> +++ b/drivers/usb/dwc2/core.h
>>> @@ -782,6 +782,7 @@ struct dwc2_hsotg {
>>>       u16 periodic_usecs;
>>>       unsigned long periodic_bitmap[DIV_ROUND_UP(TOTAL_PERIODIC_USEC,
>>>                                                  BITS_PER_LONG)];
>>> +     bool has_split[8];
>>
>> why don't you use a u8 instead then just set each bit for each
>> "has_split" you need to take care of. This array is kinda ugly.
>
> Let's actually drop this patch completely.  Julius and I sat down and
> he talked me through things, and with my current understanding the
> current microframe scheduler in dwc2 is broken enough that small
> little band-aids like this will do little more than just push the
> problems around.
>
> I'm a good portion of the way through a better microframe scheduler.
> I have no doubt that it won't be perfect, but hopefully it will at
> least be based in reality...
>
> My latest thinking on the patches in this series:
>
> 1. usb: dwc2: rockchip: Make the max_transfer_size automatic
>
> I'll probably separate this out into its own patch so I can stop
> sending it as part of this series.  ...or if someone wanted to land it
> then I won't bother.
>
>
> 2. usb: dwc2: host: Get aligned DMA in a more supported way
>
> Still can land any time and has good benefits.  I believe that I can't
> separate this because it will cause conflicts with scheduler patches.
>
>
> 3. usb: dwc2: host: Add scheduler tracing
>
> Would be nice to land.
>
>
> 4. usb: dwc2: host: Rewrite the microframe scheduler
> 5. usb: dwc2: host: Keep track of and use our scheduled microframe
> 6. usb: dwc2: host: Assume all devices are on one single_tt hub
>
> Please drop patches 4-6 right now.
>
>
> 7. usb: dwc2: host: Add a delay before releasing periodic bandwidth
> 8. usb: dwc2: host: Giveback URB in tasklet context

if you can, it's best to send a new series with the changes. This makes
mine and John's life a lot easier :-)

> I'll probably move these back up in the series (like in v2) and put
> microframe rewrite atop them.  With my current understanding the
> scheduling is so broken today that the concerns Alan brought up can
> wait until we have a proper scheduler to be addressed.  In the
> meantime getting the huge boost in interrupt speed will help with
> dwc2's correctness (and performance) because it means we're much less
> likely to miss SOF interrupts.
>
> If anyone has any review time, giving a review to v2 of these patches
> would be helpful.  Otherwise I'll double check that v2 still looks
> good with my current understanding and eventually post them again.

That would have to be someone experienced with that IP. I don't even
have docs :-)

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWTiD4AAoJEIaOsuA1yqREPA8P/0Dy8aBTIdhTaRu0APXOHqL8
U8qvj5kKyFwNpv4axZhGiKjioW/zjAD/2kE7PgPOfcDd7H22f/XlUtutuSZKizrJ
NZ5p2Ca/nC0QuY4bvojEuRi4YLNp1o41f/sfejAUgAA6mtLvoHZsYZq3QuVi/1zR
N8N3d87QHkbkeXXbR6/Qc194VVd7eG2a12+ORRcH6lVzwTCWdi2ecMI8Fx3cjkM9
1R8Lcy4NXfSUGuWcRJP/R831xjkcjKmByQkTUoghIH4d5QpOgMV2McdzhiSeLHFe
SfObwXmanIM3M1czaJIt7629ngLmYh86H62Jk2YCEHl6vn4LrzZCfuGd6KYcb7Gi
EOSd9ur2q3SrXiXIhwa9pn+VHbLycyqrufrP7lrpdPB3diranUozOeTCi8rCqZGG
a7fNBU8tQ2cAmCpxN/iibU2xusGFr18Sb/URR4OkkWdJwfwGDowsqbWm1iISG8VY
ai9lHsW3BTpIsAWDRHUcUUsBDNkXssZs4tXtjFlso7C30ohARoQqJxIEauwVJxa9
MFRzesBnrSHOsYIZ5XfPZ22EFF09KZHrWoOScAYMuM3Nct65EgzkjM5anQY6iGJw
k7gXt9DYkWlgViGsp6C9Z1Zc07XOM/dySUQcvpCRKynk2tsFTZTH9BrqmJkbiHnt
HQxTX1cVp0FrNQIjVHht
=tN3s
-----END PGP SIGNATURE-----
--=-=-=--


--===============3870683234588019891==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3870683234588019891==--
